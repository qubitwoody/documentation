# OS
rocky8

## 0. Preconfig

### 0.1 Disable IPv6

    vi /etc/default/grub
    
    ipv6.disable=1
    
    grub2-mkconfig -o /boot/grub2/grub.cfg

    reboot

### 0.2 Proxy

    vi /etc/profile.d/pproxy.sh 
    
    export http_proxy=http://172.16.10.20:3128
    export https_proxy=http://172.16.10.20:3128

## 1. Basic config

### 1.1 Chrony

    dnf -y install chrony
    
    vi /etc/chrony.conf
    
    systemctl enable --now chronyd
            
### 1.2 Rsyslog

    dnf -y install rsyslog
    
    systemctl enable --now rsyslog
    
### 1.3 Snmp

    dnf -y install net-snmp net-snmp-utils
    
    vi /etc/snmpd/snmp.conf
    
    systemctl enable --now snmpd
    
    snmpwalk -v2c -c rocky8 localhost system
    
### 1.4.1 Zabbix Agent

    dnf -y install https://repo.zabbix.com/zabbix/6.3/rhel/8/x86_64/zabbix-release-6.3-1.el8.noarch.rpm
    
    dnf -y install zabbix-agent2
    
    vi /etc/zabbix/zabbix_agent2.conf
    
    systemctl enable --now zabbix-agent2

### 1.4.2 Zabbix Agent Selinux

    dnf install checkpolicy
    
    vi zabbix_agent.te
    
    setsebool -P domain_can_mmap_files on
    
    checkmodule -m -M -o zabbix_agent.mod zabbix_agent.te
    
    semodule_package --outfile zabbix_agent.pp --module zabbix_agent.mod
    
    semodule -i zabbix_agent.pp


## 2. Firewalld
    
### 2.1 all

    firewall-cmd --add-service=snmp --permanent
    
    firewall-cmd --add-port=10050/tcp --permanent
    
    firewall-cmd --reload
    
## 3. Ansible
    
### 3.1 Install

    dnf -y install epel-release
    
    dnf -y install python3 python3-pip
    
    pip3 install ansible
    
    ansible --version

### 3.2.1 Config

    vi /etc/ansible/ansible.cfg
    
    host_key_checking = False
    
### 3.2.2 Edit hosts

    vi /etc/ansible/hosts
    
    [target_servers]
    10.0.0.51
    10.0.0.52
    
### 3.2.3 Basic command
    
    ansible all --list-hosts
    
    ansible target_servers --list-hosts

### 3.3 Make and copy key
    
    ssh-keygen -t rsa
    
    ssh-copy-id root@10.0.0.51

## 9. Check
    
### 9.1 systemd-tmpfiles-setup.service

    systemctl status systemd-tmpfiles-setup.service
