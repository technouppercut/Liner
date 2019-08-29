#!/bin/bash


 systemctl stop systemd-networkd.socket systemd-networkd \
networkd-dispatcher systemd-networkd-wait-online
 systemctl disable systemd-networkd.socket systemd-networkd \
networkd-dispatcher systemd-networkd-wait-online
 systemctl mask systemd-networkd.socket systemd-networkd \
networkd-dispatcher systemd-networkd-wait-online
 apt-get --assume-yes purge nplan netplan.io
