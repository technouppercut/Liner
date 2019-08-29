#!/bin/bash


ip link set eth3 txqueuelen 10000
ip link set eth0 txqueuelen 1000
ip link set eth1 txqueuelen 1000
ip link set eth2 txqueuelen 1000
ip link set eth3 mtu 9000
ip link set eth2 mtu 9000
ip link set eth1 mtu 9000
ip link set eth0 mtu 9000
ip link set br0 mtu 9000
