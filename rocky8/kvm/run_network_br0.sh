nmcli connection add type bridge autoconnect yes con-name br0 ifname br0

nmcli connection modify br0 ipv4.addresses 10.90.11.3/24 ipv4.method manual

nmcli connection modify br0 ipv4.gateway 10.90.10.199

nmcli connection modify br0 ipv4.dns 10.90.10.199

nmcli connection del enp2s0f0

nmcli connection add type bridge-slave autoconnect yes con-name enp2s0f0 ifname enp2s0f0 master br0

reboot
