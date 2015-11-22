#!/usr/bin/env bash
# This script is used to provision a local development vagrant box.


echo "Running apt-get update ..."
apt-get update

echo "Installing required Python and other packages ..."
apt-get install -y build-essential apache g++ git wget curl vim zip unzip openssl

echo "Create en_US locale..."
locale-gen en_US
dpkg-reconfigure locales

echo "Provisioning complete."
