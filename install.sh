#!/usr/bin/env bash

BASEPATH=https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/
FILES=( "sysinfo", "Help.md")
REMOVE=( "Help.md", "rsysinfo", "arg")

echo sysinfo install/update started

# Setup ~/bin directory
mkdir ~/bin >/dev/null 2>&1
cd ~/bin >/dev/null 2>&1

# Install files
for FILE in "${FILES[@]}"
do
   rm $FILE >>.sysinfolog 2>&1
   wget -q ${BASEPATH}${FILE} 
   chmod +x $FILE >>.sysinfolog 2>&1
   echo -n "#"
done
# Remove files
for FILE in "${REMOVE[@]}"
do
   rm $FILE >>.sysinfolog 2>&1
   echo -n "*"
done
echo
echo sysinfo install/update complete

# run this script to download and run the installer
# wget -q -O - https://raw.githubusercontent.com/dougpark/RaspberryPi_sysinfo/master/install.sh | bash