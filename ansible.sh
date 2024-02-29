#!/bin/bash

sudo yum install ansible -y
if [ $? -ne 0];
then
    echo "INSTALLATION ANSIBLE IS SUCCES"
else
    echo "INSTALLATION ANSIBLE IS FAILURE"
fi 
sudo dnf install ansible-core -y

if [ $? -ne 0];
then
    echo "INSTALLATION ANSIBLE CORE IS SUCCES"
else
    echo "INSTALLATION ANSIBLE CORE IS FAILURE"
fi 

cd /tmp
git clone https://github.com/suraj8791998/JENKINS-INSTALLATION.git

if [ $? -ne 0];
then
    echo "GIT CLONING IS SUCCES"
else
    echo "GIT CLONING IS FAILURE"
fi 

cd /tmp/JENKINS-INSTALLATION
ansible-playbook jenkins.yaml 
