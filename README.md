# PocketCHIP-Deployer
An integrated script toolkit for updating a stock Pocket C.H.I.P. to base functionality.

This script toolkit is intended to bring a Pocket C.H.I.P. that has been flashed with the latest available stable firmware from Next Thing Co. up to a useable baseline state.

PocketCHIP-Deployer automates the following common first-time-setup tasks:

- Update the '/etc/apt/sources.list' file from defunct debian.org and nextthing.co repositiories to active debian.org and jfpossibilities.com repositories.
- Update the '/etc/apt/preferences' file from the defunct nextthing.co repositiories to the active jfpossibilities.com repositories.
- Resynchronize the APT package index.
- Remove outdated Pico-8 install, then download and install Pico-8 version 0.2.4.
- Install and start an OpenSSH service, then display the CHIP's wireless network IP address.

Be sure to connect to your wireless network using the Pocket-Home GUI or NMCLI before running this script.

WARNING: This script is meant to be used on a Pocket C.H.I.P. that is new, or that has been re-flashed to factory defaults. It WILL delete your entire /usr/lib/pico-8 directory before installing version 0.2.4!
