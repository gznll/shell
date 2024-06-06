#!/bin/bash

if [ $# -lt 2 ]; then
    echo -e "Use: $0 MAC_ADDRESS CHANNEL [OUTPUT_FILE] \n"
    echo -e "info: get AP list- airodump-ng wlan0 -w out \n"
    echo "info: airmon-ng check kill"
    echo "info: for return use- sudo systemctl restart NetworkManager"

    exit 1
fi

MAC_ADDRESS=$1
CHANNEL=$2
OUTPUT_FILE=$3

airmon-ng check kill
if [ -z "$OUTPUT_FILE" ]; then
    airodump-ng --bssid "$MAC_ADDRESS" --channel "$CHANNEL" wlan0
else
    airodump-ng --bssid "$MAC_ADDRESS" --channel "$CHANNEL" wlan0 -w "$OUTPUT_FILE"
fi
