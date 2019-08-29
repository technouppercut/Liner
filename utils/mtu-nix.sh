#!/bin/bash

PORT=$1

ip link set $PORT mtu 9000
