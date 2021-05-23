#!/bin/bash
yum update
sudo yum install gcc
sudo yum install zlib-devel
sudo dnf install python3
sudo yum -y install python3-pip
# Install Ansible and python-pip
yum -y install Ansible python-pip
python3 -m pip install --user ansible
python3 -m pip install --user paramiko
python3 get-pip.py
pip3 install virtualenv
python3 -m virtualenv ansible
source ansible/bin/activate
python -m pip install ansible
 mkdir /etc/ansible/
echo "127.0.0.1" > /etc/ansible/hosts
export ANSIBLE_INVENTORY=~/.ansible/hosts
ansible all -m ping  -k -i ~/my_ansible_hosts
export ANSIBLE_CONFIG=~/.ansible/ansible.cfg
ansible --version

# PIP upgrade
pip3 install --upgrade pip
python3 get-pip.py --user
# ADD EPEL Repository (root)
yum -y install epel-release
 
# ADD Docker-compose Repository
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo