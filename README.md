# PocketCHIP-Deployer
An integrated script toolkit for updating a stock Pocket C.H.I.P. to base functionality.

This script toolkit is intended to bring a Pocket C.H.I.P. that has been flashed with the latest available stable firmware from Next Thing Co. up to a useable baseline state.

PocketCHIP-Deployer automates the following common first-time-setup tasks:

- Update the '/etc/apt/sources.list' file from defunct debian.org and nextthing.co repositiories to active debian.org and jfpossibilities.com repositories.
- Update the '/etc/apt/preferences' file from defunct nextthing.co repositiories to active jfpossibilities.com repositories.
- Resynchronize the APT package index.
- Install and start an OpenSSH service, then report the CHIP's IP address on the connected wireless network.

Be sure to connect to your wireless network using the Pocket-Home GUI or NMCLI before running this script.
