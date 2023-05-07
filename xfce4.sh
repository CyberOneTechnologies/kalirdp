#!/bin/bash
echo "[i] Updating and upgrading Kali (this will take a while)"
sudo apt-get update -yes
sudo apt-get --yes --force-yes dist-upgrade

echo "[i] Installing Xfce4 & xrdp (this will take a while as well)"
sudo apt-get --yes --force-yes install kali-desktop-xfce xorg xrdp

echo "[i] Configuring xrdp to listen to port 3390 (but not starting the service)"
sed -i 's/port=3389/port=3390/g' /etc/xrdp/xrdp.ini

sudo systemctl enable xrdp --now

sudo apt install -y dbus-x11

sudo /etc/init.d/xrdp start
