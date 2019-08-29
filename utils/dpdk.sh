#!/bin/bash

# Install dependencies
sudo apt-get update
sudo apt-get install git build-essential linux-headers-`uname -r`

# Get code
git clone http://dpdk.org/git/dpdk

# Build code
cd dpdk
make config T=x86_64-default-linuxapp-gcc
make

# Install kernel modules
sudo modprobe uio
sudo insmod build/kmod/igb_uio.ko

# Configure hugepages
echo 1024 | sudo tee /sys/kernel/mm/hugepages/hugepages-2048kB/nr_hugepages
sudo mkdir /mnt/huge
sudo mount -t hugetlbfs nodev /mnt/huge

# Bind secondary network adaptor
sudo ifconfig eth1 down
sudo ./tools/pci_unbind.py --bind=igb_uio eth1

export RTE_SDK=/home/$USER/dpdk
ln -s $RTE_SDK/build $RTE_SDK/x86_64-default-linuxapp-gcc

