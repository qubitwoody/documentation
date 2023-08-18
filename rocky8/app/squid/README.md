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

## X. Useful Links

    https://www.server-world.info/en/note?os=Rocky_Linux_8&p=squid&f=1
