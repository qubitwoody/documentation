## 1. Error
    
### 1.1 systemd-tmpfiles-setup.service

    systemctl status systemd-tmpfiles-setup.service

## 2. CPU

### 2.1 CPU core Counts

    grep -c processor /proc/cpuinfo
    
    grep "physical id" /proc/cpuinfo | sort -u
    
    grep "cpu cores" /proc/cpuinfo | tail -1

## 3. OS Version

### 3.1 OS

    cat /etc/*-release | uniq
    
    grep . /etc/*-release
    
## X. Useful Links

- https://zetawiki.com/wiki/%EB%A6%AC%EB%88%85%EC%8A%A4_%EC%A2%85%EB%A5%98_%ED%99%95%EC%9D%B8,_%EB%A6%AC%EB%88%85%EC%8A%A4_%EB%B2%84%EC%A0%84_%ED%99%95%EC%9D%B8 
    
