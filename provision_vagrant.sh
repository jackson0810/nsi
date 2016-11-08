#!/usr/bin/env bash
# This script is used to provision a local development vagrant box.

echo "Updating Time Zone to America/New_York"
ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime

echo "Running apt-get update and upgrade..."
apt-get -f install
apt-get update && sudo apt-get upgrade

echo "Installing required Python and other packages ..."
apt-get install -y build-essential unixodbc-dev unixodbc-bin unixodbc supervisor python3-pip python3-dev
apt-get install -y libldap2-dev libssl-dev libsasl2-dev libjpeg8-dev libjpeg62 libtiff4-dev zlib1g-dev libfreetype6-dev
apt-get install -y liblcms2-dev libwebp-dev libaio1 g++ nginx git wget curl vim zip unzip libpq-dev
apt-get install -y libmysqlclient-dev expect openssl mysql-server mysql_secure_installation mysql_install_db

if [ ! -f /vagrant/requirements_installed ]
then
    echo "Installing project-specific Python packages with pip3 ..."
    cd /vagrant
    pip3 install -r requirements.txt
    touch requirements_installed
fi

echo "Installing and upgrading pip and distribute..."
/usr/bin/pip3 install -U distribute
/usr/bin/pip3 install -U pip

echo "Create en_US locale..."
locale-gen en_US
dpkg-reconfigure locales

if [ ! -d /var/log/nsi ]
then
    echo "Creating directory /var/log/nsi ..."
    mkdir /var/log/nsi
    chmod -R 777 /var/log/nsi
fi

echo "Provisioning complete."

