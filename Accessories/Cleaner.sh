#!/usr/bin/env bash
# System Cleaning Tool
zenity --question \
--title="SIGINT-SAK Wipe" \
--width=300 --height=150 \
--text "Are you sure you want to wipe the toolkit files & logs?"

if [[ $? = 0 ]]; then
  # Packages
  sudo apt-get --purge remove aircrack-ng -y
  sudo apt-get --purge remove cherrytree -y
  sudo apt remove --purge cubicsdr -y
  sudo apt remove --purge exiftool -y
  sudo apt remove --purge ipcalc -y
  sudo apt-get --purge remove hackrf -y
  sudo rm -rfv /usr/local/bin/kismet* /usr/local/share/kismet* /usr/local/etc/kismet*
  sudo apt remove --purge mat2 -y
  sudo apt remove --purge nmap -y
  sudo apt remove --purge rtl-433 -y
  sudo apt-get --purge remove rtl-sdr
  sudo apt-get --purge remove tilix -y
  sudo apt remove --purge torbrowser-launcher -y
  sudo apt remove --purge proxychains tor -y
  sudo apt-get --purge remove python3-pip gpsd gpsd-clients python3-tk python3-setuptools python3-pyqt5.qtchart -y
  sudo apt remove --purge onionshare -y
  sudo apt remove --purge wireshark
  # Buttons for shortcutss
  cd /usr/share/applications/
  sudo rm -r sparrow-wifi.desktop -y
  sudo rm -r kismet.desktop
  sudo rm -r Cleaner.desktop
  sudo rm -r IMSI-Catcher.desktop
  # History Logs
  bleachbit -s firefox.*
  bleachbit -s /var/log
  bleachbit -s /Documents/IMSI-catcher\ Logs/
  bleachbit -s .bash_history
  bleachbit -s /Downloads/Programs
else
  echo "Whew....that was close!" 
fi
exit 


