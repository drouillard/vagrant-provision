#!/bin/sh

export DEBIAN_FRONTEND=noninteractive

#=========================================================
echo "Install Xvfb..."
#=========================================================
apt-get -y install xvfb
curl --output /etc/init.d/Xvfb https://raw.githubusercontent.com/xgp/vagrant-provision/master/linux/etc/Xvfb
#/usr/bin/Xvfb :99 -screen 0 1024x768x24 -ac &
chmod +x /etc/init.d/Xvfb
update-rc.d Xvfb defaults
service Xvfb start

