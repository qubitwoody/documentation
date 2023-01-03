# Xrdp
xddp from EPEL

## 1. Install

### 1.1 Install

    dnf --enablerepo=epel -y install xrdp
            
### 1.2 Run

    systemctl enable --now xrdp
    
### 1.3 Setting rules to firewalld

    firewall-cmd --add-port=3389/tcp
    
    firewall-cmd --runtime-to-permanent
