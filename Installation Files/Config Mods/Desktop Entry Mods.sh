#!/bin/bash
# Desktop Entry modifications. This script will modify your .desktop entry files
user=$(whoami)

# Cleaner.desktop
cd ~/Downloads/Programs/SIGINT-SAK/Accessories/
sed -i "s/user_var/$user/g" Cleaner.desktop
cd ~/Downloads/Programs/SIGINT-SAK/Icons
# IMSI-Catcher
sed -i "s/user_var/$user/g" imsi-catcher.desktop
# kismet.desktop
sed -i "s/user_var/$user/g" kismet.desktop
# sparrow-wifi.desktop
sed -i "s/user_var/$user/g" sparrow-wifi.desktop
# sed "s/user_var/$user/g" IMSI-Catcher.desktop > IMSI-Catcher.txt && mv IMSI-Catcher.txt IMSI-Catcher.desktop

exit
