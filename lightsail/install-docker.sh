#!/usr/bin/env bash
#test in docker 
#docker run --rm -i -t  -v $PWD:/app/ --name test ubuntu:bionic /bin/bash

sudo apt update -y
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update -y
apt-cache policy docker-ce
sudo apt install -y docker-ce
sudo usermod -aG docker ${USER}
docker --version

#
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

##



