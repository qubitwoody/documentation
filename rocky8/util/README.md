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

## 2. Hostname

### 2.1 hostname

    hostnamectl set-hostname 010010-kvm

### 2.2 localectl

    localectl set-locale LANG=ko_KR.utf8

## X. Useful Links

- https://www.tecmint.com/check-remote-port-in-linux/
