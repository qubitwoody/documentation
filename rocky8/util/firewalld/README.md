# firewall-cmd

### 2.1 basic

    firewall-cmd --get-default-zone
    
    firewall-cmd --get-active-zones


### 2.2 all

    firewall-cmd --add-service=snmp --permanent
    
    firewall-cmd --add-port=10050/tcp --permanent
    
    firewall-cmd --reload
    
### 2.3 specific public zone

    firewall-cmd --zone=public --list-all
    
    firewall-cmd --permanent --zone=public --add-interface=ens224
    
    firewall-cmd --reload

### 2.4 specific trusted zone

    firewall-cmd --zone=trusted --list-all
    
    firewall-cmd --permanent --zone=trusted --add-interface=ens192
    
    firewall-cmd --permanent --zone=trusted --add-service=ssh
    firewall-cmd --permanent --zone=trusted --add-service=smtp
    firewall-cmd --permanent --zone=trusted --add-service=cockpit
    firewall-cmd --permanent --zone=trusted --add-port=10050/tcp
    
    firewall-cmd --reload

### 2.5 block

    firewall-cmd --zone=block --permanent --add-rich-rule='rule family="ipv4" source address="10.10.10.0/23" accept'

    firewall-cmd --reload

### 2.6 Rich rules

    firewall-cmd --zone=trusted --permanent --add-rich-rule='rule family="ipv4" source address="10.10.10.0/23" accept'
    
    firewall-cmd --reload

## References

#### https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/security_guide/sec-using_firewalls
