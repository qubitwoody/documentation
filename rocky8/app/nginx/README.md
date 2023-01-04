# Nginx
Nginx conf


## 0. Preconfig

### 0.1 Create for nginx.repo

    vi /etc/yum.repos.d/nginx.repo
    
### 0.2 Edit for nginx.repo

    [nginx]
    name=nginx repo
    baseurl=http://nginx.org/packages/mainline/centos/8/$basearch/
    gpgcheck=0
    enabled=1
    
## 1. Install

### 1.1 Install nginx

    dnf module list nginx
    
    dnf module install nginx:1.20
            
### 1.2 make directories

    su - username
    mkdir cdn repo

### 1.3 run nginx

    systemctl enable --now nginx
    
### 1.4 setting rules to firewalld

    firewall-cmd --add-service=http
    
    firewall-cmd --add-service=https
    
    firewall-cmd --runtime-to-permanent

## 2. Selinx

### 2.1 Setup

    chmod -R 755 /home
    chcon -R -t httpd_sys_content_t /home/users/
