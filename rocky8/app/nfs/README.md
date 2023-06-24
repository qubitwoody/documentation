# nfs


## 1. Install

### 1.1 Install

    dnf -y install nfs-utils

### 1.2 Config

    vi /etc/idmapd.conf
    
    Domain = qubitsec.com

    vi /etc/exports

    /home/nfsshare 10.10.10.0/23(rw,no_root_squash)

    systemctl enable --now rpcbind nfs-server

## 2. Firewall

### 2.1 Config

    firewall-cmd --add-service=nfs
    
    firewall-cmd --add-service={nfs3,mountd,rpc-bind}
        
    firewall-cmd --runtime-to-permanent
    
## X. Useful Links

    https://www.server-world.info/en/note?os=Rocky_Linux_8&p=nfs&f=1
