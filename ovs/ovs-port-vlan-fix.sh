#!/bin/bash

ovs-vsctl set interface eth0 other-config:enable-vlan-splinters=true
ovs-vsctl set interface eth1 other-config:enable-vlan-splinters=true
ovs-vsctl set interface eth2 other-config:enable-vlan-splinters=true
ovs-vsctl set interface eth3 other-config:enable-vlan-splinters=true
