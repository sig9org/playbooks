#!/bin/bash

HOSTNAME="00-11-u16"
INTERFACE="ens160"
ADDRESS="172.20.0.11"
NETMASK="255.255.255.0"
GATEWAY="172.20.0.254"
DNS="8.8.8.8 8.8.4.4"

# /etc/network/interfaces
cat << EOS > /etc/network/interfaces
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

# The primary network interface
auto ${INTERFACE}
iface ${INTERFACE} inet static
    address         ${ADDRESS}
    netmask         ${NETMASK}
    gateway         ${GATEWAY}
    dns-nameservers ${DNS}
EOS

# /etc/hosts
cat << EOS > /etc/hosts
127.0.0.1	${HOSTNAME} localhost
127.0.1.1	${HOSTNAME}

# The following lines are desirable for IPv6 capable hosts
::1     ${HOSTNAME} localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
EOS
