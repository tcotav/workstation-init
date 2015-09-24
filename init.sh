#!/bin/bash

### Install git and basic workstation stuff

#sudo apt-get install git -y
#git clone https://github.com/tcotav/workstation-init.git
#cd ~/workstation-init
# confirm it's up to date
#git pull

# delete .vimrc if it exists
if [ -f ~/.vimrc ]; then
  rm -f ~/.vimrc
fi

ln -s ~/workstation-init/vim ~/.vim && ln -s ~/workstation-init/tmux.conf ~/.tmux.conf && ln -s ~/workstation-init/gitignore ~/.gitignore 
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go


# autocomplete on ubuntu
cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
sudo apt-get install build-essential cmake -y
sudo apt-get install python-dev -y
cd YouCompleteMe
git submodule update --init --recursive
./install.py


cp gitconfig ~/.gitconfig

### install golang and dev env


#wget https://storage.googleapis.com/golang/go1.5.linux-amd64.tar.gz
#tar -xzvf go1.5.linux-amd64.tar.gz
#sudo mv go /usr/local
export PATH=$PATH:/usr/local/go/bin
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
export GOROOT=/usr/local/go
echo "export GOROOT=/usr/local/go" >> ~/.bashrc
echo "export GOPATH=~/go" >> ~/.bashrc
export GOPATH=~/go
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$GOROOT/bin
mkdir -p ~/go/src
mkdir ~/bin
cp ./clean ~/bin

echo "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$GOROOT/bin:~/bin" >> ~/.bashrc
#mkdir -p ~/go/bin
cd ~/go

# get the etcd and any other packages you need
#go get github.com/coreos/go-etcd/etcd

#sudo apt-get install git-flow -y

### Set up etcd

#curl -L  https://github.com/coreos/etcd/releases/download/v2.1.2/etcd-v2.1.2-linux-amd64.tar.gz -o etcd-v2.1.2-linux-amd64.tar.gz
#tar xzvf etcd-v2.1.2-linux-amd64.tar.gz
#cd etcd-v2.1.2-linux-amd64
#sudo ./etcd -data-dir=data &

