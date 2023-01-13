# Ansible


## 1. Begin

### 1.1 command

    ansible all --list-hosts
    
    ansible target_servers --list-hosts
    
    curl --noproxy '*' --insecure -v https://repo.plura.io
            
### 1.2 

    ansible target_servers -m ping
    
    ansible target_servers -k -m command -a "uptime"
    
    ansible target_servers -k -m command -a "cat /etc/shadow" -b --ask-become-pass
    
    ansible -i hosts all -m shell -a "service cwpsrv status" -b --ask-become-pass
    
    
## X References

    https://
    
    https://
