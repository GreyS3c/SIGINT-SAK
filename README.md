# SIGINT-SAK
A full spectrum signals intelligence (SIGINT) “Swiss Army knife” (SAK) toolkit for the novice Linux operator.

## Description:
*(Alpha Release)*

The SIGINT-SAK Project was built to provide a light weight, comprehensive toolkit for the amateur signals intelligence researcher who has little to no Linux experience, and on a budget of less than $300 USD (January 2023); though expanded equipment components (such as the HackRF modules or larger capacity batteries) could bring the total cost to just shy of $500 USD.

This project seeks to aggregate the most capable open-source projects in the SIGINT community, and automate use of common CLI commands through Zenity for quick use on small touch screens. In its most comprehensive use cases, SIGINT-SAK integrates advanced WiFi & Bluetooth tools, software-defined radio (HF/VHF/UHF) and traditional GPS (via gpsd – if desired).

Written entirely in bash for simple modification by the end user, the project was designed with the following capabilities in mind: 
- Automated installation for Ubuntu-based amd64 and arm64 devices.
- GUI menus & buttons to automate common commands and scan types, built with Zenity
- Various HF, VHF and UHF scanning, RX and TX capabilities
- WiFi & Bluetooth scans & direction finding common to passive network and device reconnaissance (including retail drone direction finding)
- Wireless & mobile device identification through
- Metadata examination & removal
- Anonymous browsing and file sharing
- File configuration best practices
- File encryption
- Self destruct button (applies to SIGINT-SAK files & logs only)

## Hardware Requirements
The SIGINT-SAK was built for 64-bit Ubuntu-based operating systems with at least 4GB of RAM. To date, this project has been tested on the below listed Linux operating systems: 
- Ubuntu 22.04 amd64
- Ubuntu 22.03.1 arm64 (Ras Pi 4 & 4b) 
- Pop!_OS 22.04 LTS (NVIDIA)
- Pop!_OS 22.04 (RAS PI 4)

## Installation Process
main.sh serves as the central script to build and configure the tool kit. Below is a general overview of the installation process.
| Step | Process |
| --- | --- |
| 1. | Execute main.sh |
| 2. | Update/Upgrade/Auto Remove |
| 3. | OS Detection. Disable Bluetooth & OS Specific telemetry |
| 4. | Build SIGINT-SAK File Directories | 
| 5. | Install Common Files & Configure Tor Proxies |
| 6. | Detect architecture & execute relevent installation (amd64 or arm64)| 
| 7. | Reboot device | 
| 8. | Finish architecture specific installation, then resume main.sh | 
| 9. | Execute public keyring checker | 
| 10. | Check errors - curse at @greys3c under breath or on twitter |


## Installation
The SIGINT-SAK was built to automate the installation and configuration of software packages as well as the directory structure within those pertinent to the project. This said, a small amount of interaction may still be required of the user around OK’ing certain features and entering their password after the scripted system reboot. 

To function properly (without modification) It is recommended that you clone the SIGINT-SAK files into a directory titled “Programs”. To make this directory:
```
mkdir ~/Downloads/Programs
cd ~/Downloads/Programs
```
Clone the SIGINT-SAK files:
```
git clone https://github.com/greys3c/SIGINT-SAK 
```
Change to directory then grant the script permission to execute:
```
cd SIGINT-SAK
sudo chmod +x main.sh
```
Run the scrip: 
```
sudo ./main.sh
```


