#!/bin/bash

ID=$1

ovs-vsctl add-port br0 vlan$ID tag=$ID -- set interface vlan$ID type=internal
