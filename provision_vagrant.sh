#!/usr/bin/env bash
# This script is used to provision a local development vagrant box.

echo "Updating Time Zone to America/New_York"
ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime

echo "Running apt-get update ..."
apt-get update

echo "Installing required Python and other packages ..."
apt-get install -y build-essential unixodbc-dev unixodbc-bin unixodbc supervisor python3-pip python3-dev python-psycopg2 libldap2-dev libssl-dev libsasl2-dev libjpeg8-dev libjpeg62 libtiff4-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev libaio1 g++ nginx git wget curl vim zip unzip libpq-dev postgresql postgresql-contrib libmysqlclient-dev cifs-utils expect openssl cups python-cups hplip libcups2-dev xvfb

# Packages used for testing removed as the Firefox install takes forever, yes, forever in the office.
# apt-get install-y firefox xserver-xephyr

if [ ! -f /vagrant/requirements_installed ]
then
    echo "Installing project-specific Python packages with pip3 ..."
    cd /vagrant
    pip3 install -r requirements.txt
    touch requirements_installed
fi

if [ ! -f /vagrant/wkhtmltopdf_installed ]
then
  echo "Installing tools for PDF generation ..."
  su - root
  apt-get install -y xfonts-75dpi
  wget http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-trusty-amd64.deb
  sudo dpkg -i wkhtmltox-0.12.2.1_linux-trusty-amd64.deb
  echo -e '#!/bin/bash\nxvfb-run -a --server-args="-screen 0, 1024x768x24" /usr/bin/wkhtmltopdf $*' > /usr/bin/wkhtmltopdf.sh
  chmod a+x /usr/bin/wkhtmltopdf.sh
  ln -s /usr/bin/wkhtmltopdf.sh /usr/local/bin/wkhtmltopdf
  cd /vagrant  
  touch wkhtmltopdf_installed
  echo "Exiting from the root account..."
  sudo su - vagrant
fi

echo "Installing and upgrading pip and distribute..."
/usr/bin/pip3 install -U distribute
/usr/bin/pip3 install -U pip

echo "Create en_US locale..."
locale-gen en_US
dpkg-reconfigure locales

echo "Provisioning complete."

