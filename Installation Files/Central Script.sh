#!/bin/bash
# Created by GreyS3c
# Central Script

echo "========================================="
echo "     ===== Created by GreyS3c  =====     "
echo "     ===== twitter.com/greys3c =====     "
echo "   ===== blog: https://greys3c.com ===== "
echo "========================================="
sleep 3

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# If Ubunutu, remove creepy things
osdet=$(uname -n)
if [[ $osdet == *"ubuntu"* ]]; then
  sudo apt remove -y apport
  sudo apt remove -y popularity-contest
else
  echo "No Canonical telemetry present"
  wait 2
fi

# Stops onboard Bluetooth
sudo systemctl disable bluetooth.service

# Building Directories
mkdir ~/Documents/IMSI-catcher\ Logs
mkdir ~/Downloads/Programs/SIGINT-SAK/Accessories/Tor
mkdir ~/Downloads/Programs/SIGINT-SAK/Accessories/Veracrypt
mkdir ~/Downloads/Programs/SIGINT-SAK/Cellular
mkdir ~/Downloads/Programs/SIGINT-SAK/Installation\ Files/Config\ Mods
mkdir ~/Downloads/Programs/SIGINT-SAK/Installation\ Files/Error\ Logs
mkdir ~/Downloads/Programs/SIGINT-SAK/WiFi\ Tools

# Install packages common to both supported architectures
cd ~/Downloads/Programs/SIGINT-SAK/Installation\ Files
chmod +x Common\ Packages.sh
./Common\ Packages.sh 2> CommonPackages_Errors.txt
mv CommonPackages_Errors.txt ~/Downloads/Programs/SIGINT-SAK/Installation\ Files/Error\ Logs 
chmod -x Common\ Packages.sh

# Detect architecture to select for amd64 or arm64 unique installation process
cd ~/Downloads/Programs/SIGINT-SAK/Installation\ Files
archdet=$(uname -m)
if [[ $archdet == *"x86_64"* ]]; then
  chmod +x amd64.sh
  ./amd64.sh 2> amd64_Errors.txt
else
  chmod +x arm64.sh
  ./arm64.sh 2> arm64_Errors.txt
fi 
# Move amd64/arm64 error logs and remove permission to execute
cd ~/Downloads/Programs/SIGINT-SAK/Installation\ Files
if [[ $archdet == *"x86_64"* ]]; then
  mv amd64_Errors.txt ~/Downloads/Programs/SIGINT-SAK/Installation\ Files/Error\ Logs
  chmod -x amd64.sh
else
  mv arm64_Errors.txt ~/Downloads/Programs/SIGINT-SAK/Installation\ Files/Error\ Logs
  chmod -x arm64.sh
fi

# PGP Keyring Check 
cd ~/Downloads/Programs/SIGINT-SAK/Accessories
chmod +x PGP\ Keyring\ Check.sh 
./PGP\ Keyring\ Check.sh 2> pgpKeyringCheck_Errors.txt
mv pgpKeyringCheck_Erros.txt ~/Downloads/Programs/SIGINT-SAK/Installation\ Files/Error\ Logs
chmod -x PGP\ Keyring\ Check.sh

# Config file modification
# Proxychains modifications
cd ~/Downloads/Programs/SIGINT-SAK/Installation\ Files/Config\ Mods
chmod +x proxychains_mod.sh
./proxychains_mod.sh 2> proxchainsMod_Errors.txt
mv proxchainsMod_Errors.txt ~/Downloads/Programs/SIGINT-SAK/Installation\ Files/Error\ Logs
chmod -x proxychains_mod.sh
# Desktop Entry file modification
chmod +x Desktop\ Entry\ Mods.sh
./Desktop\ Entry\ Mods.sh 2> desktopEntryMods_Errors.txt
mv desktopEntryMods_Errors.txt ~/Downloads/Programs/SIGINT-SAK/Installation\ Files/Error\ Logs
chmod -x Desktop\ Entry\ Mods.sh

# Grant Cleaner.sh permission to execute
cd ~/Downloads/Programs/SIGINT-SAK/Accessories
chmod +wx Cleaner.sh

cd -e

# Ending Message
echo "===================================================="
echo "     ===== SIGINT-SAK Toolkit Installed! =====      "
echo "===================================================="
sleep 2
echo "===================================================="
echo " ===== Please reboot your system before use ======= "
echo "===================================================="

