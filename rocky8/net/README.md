# Network


## 1. Change IP Addresss

### 1.1 restart networkmanager

    nmtui
    
    systemctl restart NetworkManager
            
### 1.2 restart the interface to reload settings

    nmcli connection down ens192; nmcli connection up ens192
    
    nmcli connection down ens224; nmcli connection up ens224 nmcli connection modify br0 ipv6.method "disabled"

## 2. Disable IPv6

### 2.1 set   

    nmcli connection modify br0 ipv6.method "disabled"
    
## 3. Change Promisc

### 3.1 promisc on and off

    ifconfig eno4 promisc
    
    ifconfig eno4 -promisc
            
## 4. Port mirror

### 4.1 restart networkmanager

    nmcli connection add type ethernet ifname brm con-name brm autoconnect no
    
    nmcli connection modify brm +tc.qdisc "root prio handle 10:"
    nmcli connection modify brm +tc.qdisc "ingress handle ffff:"

    nmcli connection modify brm +tc.tfilter "parent ffff: matchall action mirred egress mirror dev vnet1"
    nmcli connection modify brm +tc.tfilter "parent 10: matchall action mirred egress mirror dev vnet1"

    nmcli connection brm on

    
### 4.2 restart the interface to reload settings

    nmcli connection down ens192; nmcli connection up ens192
    
    nmcli connection down ens224; nmcli connection up ens224 nmcli connection modify br0 ipv6.method "disabled"

## X. Useful Links
- https://www.server-world.info/en/note?os=Rocky_Linux_8&p=initial_conf&f=3
