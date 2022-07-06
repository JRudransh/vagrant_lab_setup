#!/usr/bin/env bash

# vagrant by default creates its own keypair for all the machines. Password based authentication will be disabled by default and enabling it so password based auth can be done.

sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd

# Supressing the banner message everytime you connect to the vagrant box.

touch /home/vagrant/.hushlogin

# Updating the hosts file for all the 3 nodes with the IP given in vagrantfile

echo -e "192.168.10.3 kali.anslab.com kali" >> /etc/hosts
echo -e "192.168.10.4 ubuntu.anslab.com ubuntu" >> /etc/hosts
echo -e "192.168.10.5 victim.anslab.com victim" >> /etc/hosts

# Installing necessary packages 

sudo apt-get update
sudo apt-get -y install curl wget net-tools iputils-ping python3 python3-pip sshpass
sudo apt-get -y install neofetch
