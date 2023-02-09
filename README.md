# SIGINT-SAK
A full-spectrum signals intelligence (SIGINT) “Swiss Army knife” (SAK) toolkit for the novice Linux operator.

## Description:
*(alpha test release - working on it!)*

The SIGINT-SAK Project was built to provide a lightweight, comprehensive toolkit for the amateur signals intelligence researcher who has little to no Linux experience, and on a budget of less than $300 USD (January 2023); though expanded equipment components (such as the HackRF modules or larger capacity battery banks) could bring the total cost to just shy of $500 USD.

This project seeks to aggregate the most capable open-source projects in the SIGINT community and automate use of common CLI commands for quick use on small touch screens. In its most comprehensive use cases, SIGINT-SAK integrates advanced WiFi & Bluetooth tools, software-defined radio (HF/VHF/UHF) and traditional GPS (via gpsd – if desired). 

Written entirely in bash for simple modification by the end user, the project was designed with the following capabilities in mind: 
- Automated installation for Ubuntu-based amd64 and arm64 devices.
- GUI menus & buttons to automate common commands and scan types, built with Zenity
- Various HF, VHF and UHF scanning, RX and TX capabilities
- WiFi & Bluetooth scans & direction finding common to passive network and device reconnaissance (including retail drone direction finding)
- Wireless & mobile device identification through the above, as well as IMSI-Catchers and ther techniques
- Metadata examination & removal
- Anonymous internet browsing and file sharing
- File configuration best practices
- File encryption
- Self destruct button (applies to SIGINT-SAK files & logs only)

## Hardware Requirements
The SIGINT-SAK was built for 64-bit Ubuntu-based operating systems with at least 4GB of RAM. To date, this project has been tested on the below listed Linux operating systems: 
- Ubuntu 22.04 amd64
- Ubuntu 22.03.1 arm64 (Ras Pi 4 & 4b) 
- Pop!_OS 22.04 LTS (NVIDIA)
- Pop!_OS 22.04 (RAS PI 4)

In addition to the host device, the user will require a RTL-SDR BLOG V3 and WiFi Adapter capable of monitor mode, as well as a panel WiFi antenna capable of receiving 2.4GHz and 5.0GHz signals. For more information on these as well as requirements specific to Raspberry Pi 4/4B or bootable USB-Flashdrive builds, be sure to check out my blog post here. 

## Installation Process
Central Script.sh serves to build and configure the tool kit by disabling unused and undesired services, executing various scripts associated with the project and moving files into specified directries. As such, it must be run as root. Below is a general overview of the installation process:
| Step | Process |
| --- | --- |
| 1. | Execute Central Script.sh |
| 2. | Update/Upgrade/Auto Remove |
| 3. | OS Detection: Disable Bluetooth & OS Specific telemetry |
| 4. | Build SIGINT-SAK File Directories | 
| 5. | Install Common Files |
| 6. | Detect architecture & execute relevent installation (amd64 or arm64)| 
| 7. | Perform PGP Keyring checks where possible
| 8. | Modify configuration files for Tor Proxychains & desktop entries |
| 9. | Build menu icons for frequently used software(s) | 
| 10. | Check errors - curse at @greys3c under breath or on twitter |


## Installation
The SIGINT-SAK was built to automate the installation and configuration of software packages as well as the directory structure within those pertinent to the project. This said, a small amount of interaction may still be required of the user around OK’ing certain features and entering their password after the scripted system reboot. 

Before we start, we'll update, upgrade and remove unnecessary files. We'll also ensure that you have git installed: 
```
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt iinstall git -y
```
To function properly (without modification) It is recommended that you clone the SIGINT-SAK files into a directory titled “Programs”. To make this directory:
```
mkdir ~/Downloads/Programs
cd ~/Downloads/Programs
```
Clone the SIGINT-SAK files:
```
git clone https://github.com/greys3c/SIGINT-SAK 
```
Change to the installation file directory then grant the script permission to write & execute:
```
cd ~/SIGINT-SAK/Installation\ Files
chmod +wx Central\ Script.sh
```
Run the script: 
```
./Central\ Script.sh
```
## Included Packages
The following packages, software and projects were included in the SIGINT-SAK. For more information on their full capabilities, use and installation, be sure to check out their project pages (where applicable): 

## Post-Installation
All errors encountered during installation have been compiled in the “Logs” directory, which you can navigate to with the following command:
```
cd ~/Downloads/Programs/SIGINT-SAK/Installation\ Files/Logs
```
Once the installation is complete, it’s a good idea to start the following: 
- Reboort your machine (required before operating many included tools)
- Identify appropriate drivers for your WiFi adapter of choice
- Modify you password and security settings (if you haven’t already)
- Familiarize yourself with newly installed software packages

## Upcoming Features & Capabilities
The SIGINT-SAK tool-kit is an ongoing project, the evolution of which I hope to support for the coming years. Listed below are some of the planned updates/upgrades for the near future: 
- Increased stability on all platforms
- Enhanced automation for existing capabilities
- Integration of other projects in development, such as custom tools for active scans and target interaction
- Automated ‘play-books’ for tools such as Kismet, IMSI-Catcher, Beacon Swarm and others
- Passive ‘Guard Dog’ proximity monitoring modes and logging
- DMR decoding
- Support for Debian-based devices

If you have any ideas to improve the project, are consistently running into errors or have recommendations of any type, please be sure to contact me.
