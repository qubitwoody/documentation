# Create Your Own SSL Certificate Authority for Local HTTPS Development

## 0. Preconfig

### 0.1 Create for nginx.repo

    vi /etc/yum.repos.d/nginx.repo
    
### 0.2 Edit for nginx.repo

    [nginx]
    name=nginx repo
    baseurl=http://nginx.org/packages/mainline/centos/8/$basearch/
    gpgcheck=0
    enabled=1
    
## 1. Create ROOT CA


### 1.1 CA RSA Key pair

    openssl genrsa -aes256 -out plura-rootca.key 2048
    
### 1.2 Edit rootca_openssl.conf

    vi rootca_openssl.conf
    
### 1.3 Crate CSR for Root CA

    openssl req -new -key plura-rootca.key -out plura-rootca.csr -pluraig rootca_openssl.plura
    
### 1.4 Crate self-singed for 10 years

    openssl x509 -req -days 3670 -extensions v3_ca -set_serial 1 -in plura-rootca.csr -signkey plura-rootca.key -out plura-rootca.crt -extfile rootca_openssl.plura
    
### 1.5 verification

    openssl x509 -text -in plura-rootca.crt
    
