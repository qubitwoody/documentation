# named
named.conf

## 1. Install

### 1.1 Install

    dnf -y install bind bind-utils
    
    dnf module install nginx:1.20
            
### 1.2 Edit named.conf

    vi /etc/named.conf
    
    systemctl enable --now named
    
    systemctl restart named

### 1.3 Testing

    dig www.naver.com
    
    
    
### 1.4 setting rules to firewalld

    firewall-cmd --add-service=dns
    
    firewall-cmd --runtime-to-permanent
