#!/bin/bash

GO_VERSION=1.5.1

wget https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz
tar -xzvf go$GO_VERSION.linux-amd64.tar.gz
sudo mv go /usr/local
export PATH=$PATH:/usr/local/go/bin
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
export GOROOT=/usr/local/go
echo "export GOROOT=/usr/local/go" >> ~/.bashrc
echo "export GOPATH=~/go" >> ~/.bashrc
export GOPATH=~/go
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$GOROOT/bin
mkdir -p ~/go/src

echo "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$GOROOT/bin:~/bin" >> ~/.bashrc
cd ~/go

. ~/.bashrc

go get github.com/constabulary/gb/...
