[loadbalancer]
${load_balancer_ip} ansible_ssh_user=ubuntu

[web]
${web1}  ansible_ssh_user=ubuntu
${web2}   ansible_ssh_user=ubuntu

[master]
${master_db_ip}  ansible_ssh_user=ubuntu

[slaves]
${slave1}  ansible_ssh_user=vagrant
${slave2}  ansible_ssh_user=ubuntu
