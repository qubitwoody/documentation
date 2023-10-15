# Repo
for local

## 1. Install

### 1.1 Install

    dnf -y install yum-utils createrepo
            
### 1.2 Create directories for repository

    mkdir -p /var/www/repos/rocky/8/x86_64/os
    
    chmod -R 755 /var/www/repos

### 1.3 copy from official repository

    reposync -p /var/www/repos/rocky/8/x86_64/os/ --repo=baseos --download-metadata
    
    reposync -p /var/www/repos/rocky/8/x86_64/os/ --repo=appstream --download-metadata
    
    reposync -p /var/www/repos/rocky/8/x86_64/os/ --repo=extras --download-metadata
    
### 1.4 create repodata

    createrepo /var/www/repos/rocky/8/x86_64/os/appstream/
    
    createrepo /var/www/repos/rocky/8/x86_64/os/baseos/
    
    createrepo /var/www/repos/rocky/8/x86_64/os/extras/


### 1.4 selinux

    restorecon -r /var/www/repos/

### 1.5 setting rules to firewalld

    firewall-cmd --add-service=ntp --permanent
    
    firewall-cmd --reload

