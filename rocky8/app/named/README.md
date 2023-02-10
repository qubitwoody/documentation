# named
named.conf

## 1. Install

### 1.1 Install

    dnf -y install bind bind-utils
            
### 1.2 Edit for named.conf

    vi /etc/named.conf
    
### 1.3 Edit for named

    vi /etc/sysconfig/named
    
    # add to the end
    OPTIONS="-4"

### 1.4 Config for logging
    
    touch /var/log/named.log
    chmod a+w /var/log/named.log
    chown -R named.named /var/log/named.log
    
    chcon -u system_u /var/log/named.log
    restorecon -v /var/log/named.log
    
    systemctl enable --now named
    systemctl restart named
    systemctl status named

### 1.5 Testing

    tail -f /var/log/named.log
    
    dig www.naver.com
    
### 1.6 setting rules to firewalld

    firewall-cmd --add-service=dns
    
    firewall-cmd --runtime-to-permanent
