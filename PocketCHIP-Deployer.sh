#!/bin/bash
  
  echo ""
  tput setaf 1;   echo "   #  #  #"
  tput setaf 1;   echo "  #########"
  tput setaf 3;   echo "###       ###"
  tput setaf 2;   echo "  # {#}   #"
  tput setaf 2;   echo "###  '\######"
  tput setaf 4;   echo "  #       #"
  tput setaf 6;   echo "###       ###"
  tput setaf 5;   echo "  ########"
  tput setaf 5;   echo "   #  #  #"
  tput setaf 7;   echo -------------
  echo ""
  
  
  tput setaf 1;   echo "Updating /etc/apt/sources.list"
  tput setaf 7;   echo ""
sed -e '/jessie-backports/s/^#*/#/g' -i /etc/apt/sources.list
sed -i 's/ftp.us/deb/' /etc/apt/sources.list
sed -i 's/opensource.nextthing.co/chip.jfpossibilities.com/' /etc/apt/sources.list
  tput setaf 1;   echo "Done."
  
  
  tput setaf 7;   echo ""
  tput setaf 2;   echo "Updating /etc/apt/preferences"
  tput setaf 7;   echo ""
sed -i 's/opensource.nextthing.co/chip.jfpossibilities.com/' /etc/apt/preferences
  tput setaf 2;   echo "Done."
  
  
  tput setaf 7;   echo ""
  tput setaf 3;   echo "Updating APT package list"
  tput setaf 7;   echo ""
apt update
  tput setaf 3;   echo "Done."

  tput setaf 7;   echo ""
  tput setaf 4;   echo "Installing OpenSSH Server"
  tput setaf 7;   echo ""
apt -y install openssh-server
  tput setaf 4;   echo "Done."
  
  tput setaf 7;   echo ""
  tput setaf 5;   echo "Starting SSH Server"
  tput setaf 7;   echo ""  
systemctl start ssh
  tput setaf 4;   echo "Done."
  
  tput setaf 7;   echo ""
  tput setaf 7;   echo "  Setup Complete! "
  tput setaf 6;   echo "CHIP's IP Address:"
  tput setaf 7;   echo ""  
ip -4 a show wlan0 | grep -Po 'inet \K[0-9.]*'
