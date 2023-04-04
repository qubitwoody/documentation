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

## 2. Install with Stream mode

### 2.1 Install package

    dnf -y install gcc make
    
### 2.2 Install nginx

    wget https://nginx.org/download/nginx-1.22.1.tar.gz
    
    tar xvzf nginx-1.22.1.tar.gz
    
    ./configure --with-stream --without-http_rewrite_module --without-http_gzip_module
    
    /usr/local/nginx/sbin/nginx -t
    
### 2.3 Register service

    vi /lib/systemd/system/nginx.service
    
    systemctl daemon-reload
    
    systemctl restart nginx

### 2.4 setting rules to firewalld

    firewall-cmd --permanent --zone=public --add-port=514/tcp
    firewall-cmd --permanent --zone=public --add-port=514/udp
    
    firewall-cmd --runtime-to-permanent

## 3. Selinx

### 3.1 Setup

    chmod -R 755 /home
    chcon -R -t httpd_sys_content_t /home/users/
