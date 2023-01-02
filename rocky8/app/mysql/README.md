# Mysql
> https://dev.mysql.com/downloads/repo/yum/

## 1. Install

### 1.1 Install

    dnf install https://repo.mysql.com//mysql80-community-release-el8-4.noarch.rpm
    
    systemctl enable --now mysqld
            
### 1.2 Config

    mysql_secure_installation

### 1.3 Login

    mysql -p
    

### 1.4 vi /etc/my.cnf.d/mysql-server.cnf

    firewall-cmd --add-service=http
    
    firewall-cmd --add-service=https
    
    firewall-cmd --runtime-to-permanent

### 1.5 vi /etc/my.cnf.d/charset.cnf

    [mysqld]
    character-set-server = utf8mb4
    
    [client]
    default-character-set = utf8mb4

### 1.6 Restart

    systemctl status mysqld
    systemctl restart mysqld


### 1.7 setting rules to firewalld

    firewall-cmd --add-service=mysql
    
    firewall-cmd --runtime-to-permanent


## 2. Clone

### 2.1 Preconfig

    uuidgen
    
    1b58f12d-5fec-11ed-bc07-000c29f03601

### 2.2 Edit

    vi /var/lib/mysql/auto.cnf
    
    [auto]
    server-uuid=1b58f12d-5fec-11ed-bc07-000c29f03601

### 2.3 Clone

    virt-clone --original 24GBMSA --name mysql --file /var/lib/libvirt/images/mysql.qcow2
