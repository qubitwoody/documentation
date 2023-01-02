# Nginx conf
Nginx conf

## 1. Install

### 1.1 Install nginx

    dnf module list nginx
    
    dnf module install nginx:1.20
            
### 1.2 make directories

    mkdir cdn repo

### 1.3 run nginx

    systemctl enable --now nginx
    
### 1.4 register firewalld

    firewall-cmd --add-service=http
    
    firewall-cmd --add-service=https
    
    firewall-cmd --runtime-to-permanent
    
