#!/bin/bash

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
sudo bash -c "echo \"deb https://apt.dockerproject.org/repo ubuntu-trusty main\" > /etc/apt/sources.list.d/docker.list" && \
sudo apt-get update && \
sudo apt-get purge lxc-docker && \
sudo apt-cache policy docker-engine && \
sudo apt-get install linux-image-extra-$(uname -r) -y && \ 
sudo apt-get install docker-engine -y && \
sudo usermod -aG docker tcotav  &&\
sudo service docker start &&\
sudo systemctl enable docker &&\
echo "log out and log back in... then run:"
echo
echo "    docker pull swarm "
