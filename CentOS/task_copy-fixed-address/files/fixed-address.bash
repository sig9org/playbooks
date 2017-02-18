#!/bin/bash

HOSTNAME="00-01-c7"
INTERFACE="ens160"
ADDRESS="172.20.0.1"
NETMASK="/24"
GATEWAY="172.20.0.254"
DNS="8.8.8.8 8.8.4.4"

hostnamectl set-hostname ${HOSTNAME}
nmcli connection modify ${INTERFACE} ipv4.addresses "${ADDRESS}${NETMASK}"
nmcli connection modify ${INTERFACE} ipv4.gateway "${GATEWAY}"
nmcli connection modify ${INTERFACE} ipv4.dns "${DNS}"
nmcli connection modify ${INTERFACE} ipv4.method manual

# /etc/hosts
cat << EOS > /etc/hosts
127.0.0.1   ${HOSTNAME} localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         ${HOSTNAME} localhost localhost.localdomain localhost6 localhost6.localdomain6
EOS
