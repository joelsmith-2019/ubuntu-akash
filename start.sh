#!/bin/bash
source $HOME/.bashrc
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
(echo ${my_root_password}; echo ${my_root_password}) | passwd root
sleep 5
systemctl restart sshd
systemctl start nginx
sleep 5
pacman -Su nano
runsvdir -P /etc/service &
source $HOME/.bashrc

