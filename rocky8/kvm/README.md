# KVM
libvirtd

## 1. Install

### 1.1 Install

    dnf -y install qemu-kvm libvirt virt-install
    
    systemctl enable --now libvirtd
    
    reboot
            
### 1.2 Install required packages.

    dnf -y install virt-manager
    
    systemctl restart libvirtd


### 1.3 Basic command

    virsh --help
    
    virsh list
    
    virsh list --all
    
    virsh start rocky8
    
    virsh start rocky8 --console
    
    virsh shutdown rocky8
       
    virsh autostart rocky8
    
    virsh autostart --disable rocky8
    
    virsh undefine rocky8
    rm -rf /var/lib/libvirt/images/rocky8.qcow2

## 2. Clone

### 2.1 clone

    virt-clone --original 24GBMSA --name 24GBMSA-zabbix --file /var/lib/libvirt/images/24GBMSA-zabbix.qcow2
    
### 2.2 copy

    scp /etc/libvirt/qemu/24GBMSA.xml root@10.10.10.11:/etc/libvirt/qemu/
    
    scp /var/lib/libvirt/images/24GBMSA.qcow2 root@10.10.10.11:/var/lib/libvirt/images/
    
    systemctl restart libvirtd
    
    virt-clone --original 24GBMSA --name 24GBMSA-zabbix --file /var/lib/libvirt/images/24GBMSA-zabbix.qcow2

    
    
