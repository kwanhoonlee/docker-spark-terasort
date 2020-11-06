#!/bin/bash

PS_IPADDR=172.36.0
PS_HOST_IPADDR=10.0.0.24
NET_INTERFACE=$1

sudo route add -net $PS_IPADDR.0 netmask 255.255.0.0 gw $PS_HOST_IPADDR
echo "DONE"
sudo iptables -A FORWARD -i $NET_INTERFACE -j ACCEPT    
echo "DONE"
sudo iptables -P FORWARD ACCEPT
echo "DONE"

route -n
