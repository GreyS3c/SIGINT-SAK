#!/bin/bash
# amd64 (x86_64) unique files

cd ~/Downloads/Programs/SIGINT-SAK/WiFi\ Tools
# Installing Sparrow-WiFi
sudo apt-get install python3-pip gpsd gpsd-clients python3-tk python3-setuptools python3-pyqt5.qtchart -y
sudo pip3 install QScintilla gps3 dronekit manuf python-dateutil numpy matplotlib -y
git clone https://github.com/ghostop14/sparrow-wifi
cd sparrow-wifi
virtualenv --python=python3 $HOME/sparrow
source $HOME/sparrow/bin/activate
pip3 install gps3 python-dateutil requests pyqt5 pyqtchart numpy matplotlib -y

# Installing amd64 VeraCrypt 
cd ~/Downloads/Programs/SIGINT-SAK/Accessories/Veracrypt
wget https://launchpad.net/veracrypt/trunk/1.25.9/+download/veracrypt-1.25.9-Ubuntu-22.04-amd64.deb
# Download PGP signature file
wget https://launchpad.net/veracrypt/trunk/1.25.9/+download/veracrypt-1.25.9-Ubuntu-22.04-amd64.deb.sig
# Download public Key
wget https://www.idrix.fr/VeraCrypt/VeraCrypt_PGP_public_key.asc
# Import Key into public keyring
gpg --import VeraCrypt_PGP_public_key.asc
# Uncompress and Install
sudo dpkg -i veracrypt-1.25.9-Ubuntu-22.04-amd64.deb
sudo apt update

exit

