#!/bin/bash

PORT=$1

ovs-vsctl set Interface $PORT mtu_request=9000
