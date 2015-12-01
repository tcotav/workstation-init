#!/bin/bash


cd ~/

wget -o spideroakone_amd64.deb https://spideroak.com/getbuild?platform=ubuntu&arch=x86_64


sudo dpkg -i ~/spideroakone_amd64.deb &&  sudo apt-get install -f. && SpiderOakONE --setup=-


