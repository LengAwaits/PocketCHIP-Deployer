#!/bin/bash

sed -e '/jessie-backports/s/^#*/#/g' -i /etc/apt/sources.list
sed -i 's/ftp.us/deb/' /etc/apt/sources.list
sed -i 's/opensource.nextthing.co/chip.jfpossibilities.com/' /etc/apt/sources.list
sed -i 's/opensource.nextthing.co/chip.jfpossibilities.com/' /etc/apt/preferences
apt update
apt -y install openssh-server
systemctl start ssh
ip -4 a show wlan0 | grep -Po 'inet \K[0-9.]*'
