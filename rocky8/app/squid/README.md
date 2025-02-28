# Squid

## 1. Install

### 1.1 Install

    dnf -y install squid
    
### 1.2 Config

    vi /etc/squid/squid.conf
    
    # line 29
    acl my_localnet src 10.10.10.0/23
    
    # line 46 : uncomment
    http_access deny to_localhost
    
    # line 55 : comment out
    #http_access allow localnet
    # line 57 : add (allow defined ACL above)
    http_access allow my_localnet
    
    # add to the end
    request_header_access Referer deny all
    request_header_access X-Forwarded-For deny all
    request_header_access Via deny all
    request_header_access Cache-Control deny all
    
    # add (do not display IP address)
    forwarded_for off

### 1.3 Run

    systemctl enable --now squid
    
### 1.4 Setting rules to firewalld

    firewall-cmd --add-service=squid
    
    firewall-cmd --runtime-to-permanent

### 1.5 Check config

    squid -k parse

### 1.6 Check process

    netstat -tnlp

## 2. PLURA-SQUID

### 2.1 make web.log

    touch /var/log/plura/weblog.log
    
    chown squid.root /var/log/plura/weblog.log
    chmod -R 766 /var/log/plura/weblog.log

    chcon -t squid_log_t /var/log/plura/weblog.log

### 2.2 add info

    echo "ModPlura-squid" > /etc/modplura
    echo "0.0.1" >> /etc/modplura
    touch /etc/.modplura

### 2.3 restart

    systemctl restart squid
    systemctl status squid

## X. Useful Links

    https://www.server-world.info/en/note?os=Rocky_Linux_8&p=squid&f=1
