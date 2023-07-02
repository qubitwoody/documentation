# Utilities


## 1. Begin

### 1.1 curl

    curl -v https://repo.plura.io
    
    curl --noproxy '*' -v https://repo.plura.io
    
    curl --noproxy '*' --insecure -v https://repo.plura.io
            
### 1.2 number of lines in file

    cat filename | wc -l
    
### 1.3 Check Remote Ports

    dnf install nc
    
    nc -zv 192.168.1.15 22
    
    nc -zv 192.168.56.10 20-80

### 1.4 Check Remote Ports with UDP

    nc -zv -u 192.168.56.10 5514

## 2. Hostname

### 2.1 Set System Hostname

    hostnamectl set-hostname 010010-kvm

### 2.2 Set System Locale

    localectl set-locale LANG=ko_KR.utf8

## 3. Proxy

### 3.1 create new

    vi /etc/profile.d/pproxy.sh

### 3.2 run

    source /etc/profile.d/pproxy.sh


## 4. Check Memory

### 4.1 run

    dmidecode -t 16

    dmidecode -t 17

    lshw -class memory | grep size


## X. Useful Links

- https://www.tecmint.com/check-remote-port-in-linux/
- https://appuals.com/check-ram-slots-linux/
