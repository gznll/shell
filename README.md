# Quiet On - Network Noise Reduction Script

This script aims to reduce network noise on a Linux system by applying various configuration changes.

## Requirements:

- Linux operating system
- `iptables`, `iproute2`, `net-tools`, `macchanger`
- Python 3

## Usage:

```bash
sudo bash quiet_on.sh --interface <interface> --new-hostname <hostname> [--noise-reduction]
```

## Options:

    --interface: Specify the network interface to hide.
    --new-hostname: Specify the new hostname for the system.
    --noise-reduction: Enable traffic shaping for noise reduction (optional).
    
## Example:
```bash 
sudo bash quiet_on.sh --interface eth0 --new-hostname DESKTOP-HN2CAEVS --noise-reduction
```
This will apply noise reduction techniques on the specified interface eth0, change the hostname to DESKTOP-HN2CAEVS, and enable traffic shaping.


# Quiet Off - Network Noise Restoration Script

This script aims to restore network settings on a Linux system that were previously modified by the Quiet On script.

## Requirements:

- Linux operating system
- `iptables`, `iproute2`, `net-tools`, `macchanger`
- Python 3

## Usage:

```bash
sudo bash quiet_off.sh --interface <interface> --old-hostname <hostname>
```
## Options:

    --interface: Specify the network interface to restore settings.
    --old-hostname: Specify the old hostname for the system.

Example:
```bash
sudo bash quiet_off.sh --interface eth0 --old-hostname kali
```

This will restore the original MAC address, enable ICMP Redirect, enable the NTP client, restore firewall configuration, enable hostname transfer via DHCP, reset TTL values, restore hostname and remove any traffic shaping (noise reduction) on the specified interface eth0.

## Disclaimer:

This script is provided "as is" without warranty of any kind. Use it at your own risk.

