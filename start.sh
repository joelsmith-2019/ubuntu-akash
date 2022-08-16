#!/bin/bash
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
(echo ${my_root_password}; echo ${my_root_password}) | passwd root
sleep 5
systemctl restart sshd
systemctl start nginx

