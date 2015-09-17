#!/bin/bash

# assumes you're on UBUNTU

sudo apt-get install build-essential cmake -y

sudo apt-get install python-dev -y

cd ~/.vim/bundle

git clone git@github.com:Valloric/YouCompleteMe.git
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py
