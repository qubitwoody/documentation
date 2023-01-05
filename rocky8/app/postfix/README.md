# Postfix
main.conf

## 1. Install

### 1.1 Install

    dnf -y install postfix
            
### 1.2 Edit for named.conf

    vi /etc/postfix/main.cf

### 1.3 Config rsyslog for mail
     
    dnf -y install rsyslog
    systemctl enable --now rsyslog

### 1.4 Install rsyslog
     
    dnf -y install rsyslog
    systemctl enable --now rsyslog
    
### 1.5 Edit vi /etc/rsyslog.conf

    mail.*  /var/log/maillog

### 1.6 Run rsyslog
     
    systemctl enable --now rsyslog
    systemctl restart rsyslog

### 1.7 Run postfix
     
    systemctl enable --now postfix
    systemctl restart postfix

### 1.8 Testing

    tail -f /var/log/maillog
    
    postconf -n
    
### 1.9 setting rules to firewalld

    firewall-cmd --add-service=smtp
    
    firewall-cmd --runtime-to-permanent

## X. Referencs

    https://
    
