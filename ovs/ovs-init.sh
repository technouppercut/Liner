#!/bin/bash


ovs-vsctl add-port br0 eth0
ovs-vsctl add-port br0 eth1
ovs-vsctl add-port br0 eth2 tag=5 vlan_mode=native-untagged
ovs-vsctl add-port br0 vlan110 tag=110 -- set interface vlan110 type=internal
ovs-vsctl add-port br0 vlan237 tag=237 -- set interface vlan237 type=internal
