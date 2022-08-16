#!/bin/bash
echo "Trying To Allow Root Login"
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "My Cool Root Password = "${my_root_password}
(echo ${my_root_password}; echo ${my_root_password}) | passwd root
sleep 10
systemctl restart sshd
systemctl start nginx
