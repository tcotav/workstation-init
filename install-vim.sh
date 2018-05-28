#!/bin/bash

# get pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

python -m pip install flake8

cd ~/.vim/bundle
git clone https://github.com/w0rp/ale.git

cat << EOF >> ~/.vim/vimrc

filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

"set foldmethod=indent
"set paste
set nocompatible
set bs=2
set ai
set backup
set noerrorbells
set autoindent
set autowrite
set ruler
set showmode
"set number
set history=50        " keep 50 lines of command line history
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set showmatch
set vb
set showcmd        " display incomplete commands
EOF

