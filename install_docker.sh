#!/bin/bash
sudo apt update
sudo apt -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSl http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
    "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

sudo apt -y update
sudo apt -y install docker-ce
# install docker-composer
curl -L https://get.daocloud.io/docker/compose/releases/download/1.25.0/docker-compose-`uname -s`-`uname -m` | sudo tee /usr/local/bin/docker-compose > /dev/null
sudo chmod +x /usr/local/bin/docker-compose
