#!/usr/bin/env bash
# IMSI-Catcher Lancher script
opt1="Help Menu"
opt2="IMSI to Track"
opt3="Sniff on Interface"
usermenu=$(zenity  --list  --title "IMSI-catcher Quick Tool" --radiolist  --column "" --column "" TRUE "$opt1" FALSE "$opt2"  FALSE "$opt3" --height=400 --width=300)
case $usermenu in
$opt1 )
cd ~/Downloads/Programs/SIGINT-SAK/Cellular/IMSI-catcher
python3 simple_IMSI-catcher.py -h
exit;;
$opt2)
handle=$(zenity --entry --title "IMSI to Track" --text "Enter IMSI to Track")
cd ~/Downloads/Programs/SIGINT-SAK/Cellular/IMSI-catcher
now=$( date '+%F_%H:%M:%S' )
python3 simple_IMSI-catcher.py -m > ~/Documents/IMSI-catcher\ Logs/$handle-IMSI-cather_$now.txt
read -rsp $'Press enter to continue...\n'
exit;;
$opt3)
handle=$(zenity --entry --title "Sniff on Interface")
cd ~/Downloads/Programs/SIGINT-SAK/Cellular/IMSI-catcher
now=$( date '+%F_%H:%M:%S' )
python3 simple_IMSI-catcher.py -s > ~/Documents/IMSI-catcher\ Logs/$handle-IMSI-cather_$now.txt
exit;;
esac



