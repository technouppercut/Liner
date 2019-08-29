#!/bin/bash


if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

apt update && apt upgrade -y


apt install -y \
python python3 python-dev python-pip python3-dev python3-pip \
netdiscover minicom curl wget vlan bridge-utils net-tools \
nmap iftop snmp sshpass speedtest-cli ipcalc libpcap-dev  


apt install -y \
glances nmon mc git



