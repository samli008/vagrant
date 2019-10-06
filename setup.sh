#/bin/sh

# install some tools
sudo yum install -y wget lrzsz screen ftp

# install and start docker
sudo yum install -y docker
sudo systemctl enable docker && sudo systemctl start docker

sudo setenforce 0

sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo swapoff -a
