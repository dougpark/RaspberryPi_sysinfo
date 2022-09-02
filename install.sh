#!/usr/bin/env bash
mkdir ~/bin >/dev/null 2>&1
cd ~/bin >/dev/null 2>&1
rm sysinfo >/dev/null 2>&1
wget -q https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/sysinfo 
chmod +x sysinfo >/dev/null 2>&1
echo Done. Type sysinfo to run

# run this script to download and run the installer
# wget -q -O - https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/install.sh | bash