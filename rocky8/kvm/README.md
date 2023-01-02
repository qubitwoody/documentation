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

    virsh list
    
    virsh list --all
    
    virsh start rocky8
    
    virsh start rocky8 --console
    
    virsh shutdown rocky8
    
    virsh destroy rocky8
    
    virsh autostart rocky8
    
    virsh autostart --disable rocky8
