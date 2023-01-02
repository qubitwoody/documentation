# named
named.conf

## 1. Install

### 1.1 Install

    dnf -y install bind bind-utils
            
### 1.2 Edit named.conf

    vi /etc/named.conf
    
    mkdir /var/named/log/
    touch /var/named/log/query.log
    chown -R named:named /var/named/log/
    
    systemctl enable --now named
    systemctl restart named

### 1.3 Testing

    tail -f /var/named/log/query.log
    
    dig www.naver.com
    
### 1.4 setting rules to firewalld

    firewall-cmd --add-service=dns
    
    firewall-cmd --runtime-to-permanent
