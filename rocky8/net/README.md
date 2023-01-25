# Network


## 1. Change IP Addresss

### 1.1 restart networkmanager

    nmtui
    
    systemctl restart NetworkManager
            
### 1.2 restart the interface to reload settings

    nmcli connection down ens192; nmcli connection up ens192
    
    nmcli connection down ens224; nmcli connection up ens224
    
## X. Useful Links

- https://www.server-world.info/en/note?os=Rocky_Linux_8&p=initial_conf&f=3
