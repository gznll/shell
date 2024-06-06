# Wi-Fi Toolkit

This repository contains a collection of shell scripts for performing various Wi-Fi related tasks.

## Requirements:

- Linux operating system
- airodump-ng and aireplay-ng tools (usually part of the aircrack-ng suite)
- Python 3

## Usage:

###

Get AP list
```bash
airodump-ng wlan0 -w out
```
output: out-01.csv


### Wi-Fi Dumping (wifi_dump.sh)

This script uses airodump-ng to capture Wi-Fi packets from a specific Access Point (AP).

#### Syntax:

```bash
./wifi_dump.sh MAC_ADDRESS CHANNEL [OUTPUT_FILE]
```
Arguments:
    MAC_ADDRESS: The MAC address of the target AP.
    CHANNEL: The channel the AP is operating on.
    OUTPUT_FILE: (Optional) The filename for the output capture file. Defaults to dump.cap.
    
```bash
./wifi_dump.sh 00:11:22:33:44:55 11 dump.cap
```
This will capture Wi-Fi packets from the AP with MAC address 00:11:22:33:44:55 on channel 11 and save them to dump.cap.

## Wi-Fi Deauth Attack (death_wifi.sh)
This script uses aireplay-ng to perform a deauthentication attack against a specific client connected to an AP.
#### Syntax:
```bash
./death_wifi.sh DEAUTH_COUNT MAC_ADDRESS [INTERFACE wlan0]
```
Arguments:
    DEAUTH_COUNT: The number of deauthentication packets to send.
    MAC_ADDRESS: The MAC address of the target client.
    INTERFACE: (Optional) The network interface to use. Defaults to wlan0.
```bash
./death_wifi.sh 10 00:11:22:33:44:55 wlan0
```
This will send 10 deauthentication packets to the client with MAC address 00:11:22:33:44:55 using the wlan0 interface.

Note: This script is intended for educational purposes only. Using it for malicious purposes is illegal and unethical.

## Python HTTP Server (python_server.sh)
This script starts a simple Python HTTP server on a specified port.
#### Syntax:
```bash
./python_server.sh [PORT 8000]
```
Arguments:

    PORT: (Optional) The port to listen on. Defaults to 8000.
```bash
./python_server.sh 8080
```
This will start the server on port 8080.

Note: Ensure that the current directory contains the files you want to serve.

## Disclaimer:

These scripts are provided "as is" without warranty of any kind. Use them at your own risk.

