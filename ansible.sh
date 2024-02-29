#!/bin/bash

sudo yum install ansible -y


mkdir /ansible
cd /ansible
git clone https://github.com/suraj8791998/JENKINS-INSTALLATION.git

cd JENKINS-INSTALLATION
ansible-playbook jenkins.yaml 
