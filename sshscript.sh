#!/bin/bash
source $HOME/.bashrc
TZ=Asia/Kolkata
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
apt-get update
apt-get upgrade -y
apt-get install -y sudo nano wget tar zip unzip jq ssh
apt-get install -y openssh-server
#echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
mkdir ~/.ssh
nano authorized_keys
echo ${my_pub_key} >> authorized_keys
#(echo ${my_pub_key}; echo ${my_pub_key}) | passwd root
service ssh restart
source $HOME/.bashrc
sleep infinity


