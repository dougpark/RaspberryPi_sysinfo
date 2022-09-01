#!/usr/bin/env bash
mkdir ~/bin
cd ~/bin
rm sysinfo
wget https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/sysinfo
echo running chmod
chmod +x sysinfo
cd 

# run this script to download and run the installer
# wget -O - https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/install.sh | bash