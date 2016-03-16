#!/bin/bash

### Install git and basic workstation stuff

cd ~/workstation-init
# confirm it's up to date
git pull

# delete .vimrc if it exists
if [ -f ~/.vimrc ]; then
  rm -f ~/.vimrc
fi

ln -s ~/workstation-init/vim ~/.vim && ln -s ~/workstation-init/tmux.conf ~/.tmux.conf && ln -s ~/workstation-init/gitignore ~/.gitignore 
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go


cd ~/.vim/bundle

# for writing
git clone git@github.com:reedes/vim-pencil.git

# autocomplete on ubuntu
git clone https://github.com/Valloric/YouCompleteMe.git
sudo apt-get update
sudo apt-get install build-essential cmake -y
sudo apt-get install python-dev -y
cd YouCompleteMe
git submodule update --init --recursive
./install.py


cp gitconfig ~/.gitconfig

mkdir ~/bin
cp ./clean ~/bin

echo "export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:~/bin" >> ~/.bashrc

