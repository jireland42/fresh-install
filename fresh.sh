#!/usr/bin/env bash

cd /usr/local/bin

sudo apt update
sudo apt upgrade
sudo apt install -y software-properties-common

sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install -y curl git ansible build-essential

#ansible-playbook $TAGS fresh.yml
ansible-playbook fresh.yml
#sudo ansible-pull -U https://github.com/jireland42/ansible.git

#COPY zshrc /root/.zshrc

