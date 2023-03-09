#!/bin/sh

# credits
# https://linuxconfig.org/polybar-a-better-wm-panel-for-your-linux-system

IP=$(dig +short myip.opendns.com @resolver1.opendns.com)

[ $IP = "" ] && echo "No IP Found" && exit 0

if pgrep -x openvpn > /dev/null; then
    echo VPN: $IP
else
    echo $IP
fi
