#!/bin/bash
# Common (amd64 & arm64) Software Packages
user=$(whoami)

# System Utilities
# Installing Python 3.10
sudo apt-get install python3.10 -y
# Installing Virtualenv
sudo apt install python3-virtualenv -y
# Installing pip
sudo apt-get install python3-pip -y
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# Common tools
# Installing CherryTree multi-layer notes
sudo apt-get install cherrytree -y
# Installing Bleachbit
sudo apt install bleachbit -y
# Installing Firefox
sudo apt install firefox -y
wait
# Installing MACchanger
sudo apt install macchanger -y
# Installing Tilix
sudo apt-get install tilix -y

# SDR Programs & Packages
# Installing CubicSDR
sudo apt install cubicsdr -y
# Installing RTL-SDR
sudo apt-get install rtl-sdr -y
# Installing HackRF
sudo apt-get install hackrf -y
# Installing GNU Radio
sudo apt install gnuradio -y
wait

# WiFi Tools
# Installing nmap
sudo apt install nmap -y
# Installing ipcalc
sudo apt install ipcalc -y
# Install wireshark
sudo apt install wireshark -y
# Installing Airmon-ng 
sudo apt-get install aircrack-ng -y
wait
# Installing Kismet
cd ~/Downloads/Programs/SIGINT-SAK/WiFi\ Tools
wget -O - https://www.kismetwireless.net/repos/kismet-release.gpg.key | sudo apt-key add -
echo 'deb https://www.kismetwireless.net/repos/apt/release/jammy jammy main' | sudo tee /etc/apt/sources.list.d/kismet.list
sudo apt update
sudo apt install kismet -y
# Adding user to kismet group
sudo usermod -aG kismet $user
# Sparrow WiFi Tools will be installed from amd64.sh (CPU) or arm64.sh (R Pi 4)

# Cellular Tools
# IMSI-Catcher
cd ~/Downloads/Programs/SIGINT-SAK/Cellular
# Cloning IMSI-Catcher
git clone https://github.com/Oros42/IMSI-catcher.git
cd IMSI-Catcher
sudo apt install python3-numpy python3-scipy python3-scapy -y
# Cloning gr-gsm in your OS (recommended)
sudo apt-get install -y \
    cmake \
    autoconf \
    libtool \
    pkg-config \
    build-essential \
    python-docutils \
    libcppunit-dev \
    swig \
    doxygen \
    liblog4cpp5-dev \
    gnuradio-dev \
    gr-osmosdr \
    libosmocore-dev \
    liborc-0.4-dev \
    swig
gnuradio-config-info -v
git clone -b maint-3.8 https://github.com/velichkov/gr-gsm.git

# Data Sharing
# Installing Tor Browser
cd ~/Downloads/Programs/SIGINT-SAK/Accessories/Tor
sudo apt install tor -y
sudo apt install torbrowser-launcher -y
#Fetrching Tor Developers key
gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org
# Save to keyring
gpg --output ./tor.keyring --export 0xEF6E286DDA85EA2A4BA7DE684E2C6E8793298290
# Verfiying Signature
gpgv --keyring ./tor.keyring ~/Downloads/tor-browser-linux64-9.0_en-US.tar.xz.asc ~/Downloads/tor-browser-linux64-9.0_en-US.tar.xz
sudo apt update
# Installing OnionShare
sudo apt install onionshare -y
# Download PGP signature file
wget https://keys.openpgp.org/vks/v1/by-fingerprint/927F419D7EC82C2F149C1BD1403C2657CD994F73
# Download public Key
wget https://onionshare.org/dist/2.2/OnionShare-2.2.pkg.asc
# Import Key into public keyring
gpg --import OnionShare-2.2.pkg.asc
# Install Tor Proxychains
sudo apt-get install proxychains -y
cd -e

# Metedata Tools
# Installing mat2 (metadata removal)
sudo apt install mat2 -y
# Installing Exif Tool
sudo apt install exiftool -y
sudo apt update

exit

