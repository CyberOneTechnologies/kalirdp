#!/bin/bash
echo "[i] Updating and upgrading Kali (this will take a while)"
sudo apt-get update -y
sudo apt-get dist-upgrade -y

echo "[i] Installing Xfce4 & xrdp (this will take a while as well)"
sudo apt-get install kali-desktop-xfce xorg xrdp -y

echo "[i] Configuring xrdp to listen to port 3390 (but not starting the service)"
sed -i 's/port=3389/port=3390/g' /etc/xrdp/xrdp.ini

sudo systemctl enable xrdp --now

sudo apt install -y dbus-x11

sudo /etc/init.d/xrdp start
