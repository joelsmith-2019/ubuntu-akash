#!/bin/bash
source $HOME/.bashrc
echo "Using Pacman"
pacman --noconfirm -Syyu go git wget curl nginx
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "My Fancy Password: " ${my_root_password}
(echo ${my_root_password}; echo ${my_root_password}) | passwd root
systemctl restart sshd
service sshd restart
service ssh restart
systemctl start nginx
service nginx start
sleep 5
pacman -Su nano
runsvdir -P /etc/service &
source $HOME/.bashrc
