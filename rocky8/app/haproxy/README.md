# HAPROXY
haproxy-2.6.7.tar.gz

## 1. Download

### 1.1 lua

    curl -R -O http://www.lua.org/ftp/lua-5.4.4.tar.gz

### 1.2 haproxy

    curl -R -O https://www.haproxy.org/download/2.6/src/haproxy-2.6.7.tar.gz

## 2. Install

### 2.1 lua

    dnf -y install tar make gcc gcc-c++ pcre-devel openssl-devel readline-devel systemd-devel zlib-devel
    
    tar xvzf lua-5.4.4.tar.gz
    cd lua-5.4.4
    
    make all test
    make install

### 2.2 haproxy

    tar xvzf haproxy-2.6.7.tar.gz
    cd haproxy-2.6.7
    
    make USE_NS=1 USE_TFO=1 USE_OPENSSL=1 USE_ZLIB=1 USE_LUA=1 USE_PCRE=1 USE_SYSTEMD=1 USE_LIBCRYPT=1 USE_THREAD=1 TARGET=linux-glibc
    make install
            
### 2.3.1 Set up haproxy

    useradd -M -r -s /sbin/nologin haproxy
    
    mkdir -p /etc/haproxy/SSL
    
    mkdir /var/lib/haproxy
    
    touch /var/lib/haproxy/stats
    

### 2.3.2 Config check haproxy

    /usr/local/sbin/haproxy -f /etc/haproxy/haproxy.cfg -c

### 2.3.3 Register service
    
    vi /usr/lib/systemd/system/haproxy.service
    
    systemctl daemon-reload
    
    systemctl enable --now haproxy
    
 ### 2.4 keepalived

    dnf -y install keepalived
    
    vi /etc/keepalived.conf
    
    systemctl enable --now keepalived
    
 ### 2.5 Set up keepalived

    tar xvzf haproxy-2.6.7.tar.gz
    
    
    
 ### 9.1 TESTING
    
    systemctl status systemd-tmpfiles-setup.service
    
    
