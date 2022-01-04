#!/bin/bash
  
  echo ""
  tput setaf 1;   echo "   #  #  #"
  tput setaf 1;   echo "  #########"
  tput setaf 3;   echo "###       ###"
  tput setaf 3;   echo "  # {#}   #"
  tput setaf 2;   echo "###  '\######"
  tput setaf 2;   echo "  #       #"
  tput setaf 6;   echo "###       ###"
  tput setaf 6;   echo "  ########"
  tput setaf 5;   echo "   #  #  #"
  tput setaf 5;   echo -------------
  echo ""
  
  tput setaf 1;   echo "Updating /etc/apt/sources.list"
  echo ""
  sleep 5
sed -e '/jessie-backports/s/^#*/#/g' -i /etc/apt/sources.list
sed -i 's/ftp.us/deb/' /etc/apt/sources.list
sed -i 's/opensource.nextthing.co/chip.rodeo/' /etc/apt/sources.list
  echo "Done."
  read -rsp $'Press any key to continue...\n' -n1 key
  
  echo ""
  tput setaf 3;   echo "Updating /etc/apt/preferences"
  echo ""
  sleep 5
sed -i 's/opensource.nextthing.co/chip.rodeo/' /etc/apt/preferences
  echo "Done."
  read -rsp $'Press any key to continue...\n' -n1 key
  
  echo ""
  tput setaf 2;   echo "Updating APT package list"
  echo ""
  sleep 5
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys AA8E81B4331F7F50
apt update
  tput setaf 2;   echo "Done."
  read -rsp $'Press any key to continue...\n' -n1 key
  
  echo ""
  tput setaf 6;   echo "Updating Pico-8"
  echo ""
  sleep 5
rm -rf /usr/lib/pico8
wget www.lexaloffle.com/dl/chip/pico-8_0.2.4_chip.zip
unzip pico-8_0.2.4_chip.zip -d /usr/lib
mv /usr/lib/pico-8 /usr/lib/pico8
rm pico-8_0.2.4_chip.zip
  echo "Done."
  read -rsp $'Press any key to continue...\n' -n1 key
  
  echo ""
  tput setaf 5;   echo "Installing OpenSSH Server"
  echo ""
  sleep 5
apt -y install openssh-server
  tput setaf 5;   echo "Done."
  read -rsp $'Press any key to continue...\n' -n1 key
  
  echo ""
  tput setaf 5;   echo "Starting SSH Server"
  echo ""  
  sleep 5
systemctl start ssh
echo "Done."
  
  tput setaf 7;   echo ""
  echo "  Setup Complete! "
  echo "CHIP's IP Address:"
ip -4 a show wlan0 | grep -Po 'inet \K[0-9.]*'
