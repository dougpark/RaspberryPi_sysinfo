#!/usr/bin/env bash

echo sysinfo install started

# Setup ~/bin directory
mkdir ~/bin >/dev/null 2>&1
cd ~/bin >/dev/null 2>&1

# Install sysinfo
rm sysinfo >/dev/null 2>&1
wget -q https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/sysinfo 
chmod +x sysinfo >/dev/null 2>&1

# Install rsysinfo
rm rsysinfo >/dev/null 2>&1
wget -q https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/rsysinfo 
chmod +x rsysinfo >/dev/null 2>&1

echo sysinfo install complete.

# run this script to download and run the installer
# wget -q -O - https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/install.sh | bash