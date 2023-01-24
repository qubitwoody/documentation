# Postfix
main.conf

## 1. Install

### 1.1 Install

    dnf -y install postfix
            
### 1.2 Edit for named.conf

    vi /etc/postfix/main.cf

### 1.3 Install rsyslog
     
    dnf -y install rsyslog
    
### 1.4 Edit vi /etc/rsyslog.conf for mail logging

    mail.*  /var/log/maillog

### 1.5 Check config
     
    rsyslogd -N 1

### 1.6 Run rsyslog
     
    systemctl enable --now rsyslog
    systemctl restart rsyslog

### 1.7 Run postfix
     
    systemctl enable --now postfix
    systemctl restart postfix
    
### 1.8 setting rules to firewalld

    firewall-cmd --zone=trusted --add-service=smtp
    
    firewall-cmd --runtime-to-permanent

## 2. Testing

### 2.1 Check config
    
    postconf -n

### 2.2 Sendmail

    dnf -y install mailx
    echo "test email" | mailx -s "Test email from Postfix MailServer" -r from@mail to@mail

### 2.3 Check logging

    tail -f /var/log/maillog



## X. Useful Links

    https://
    
