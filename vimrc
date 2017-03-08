set foldmethod=indent
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
set number

set history=50        " keep 50 lines of command line history
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set showmatch
set vb
syntax on

"color darkblue
set showcmd        " display incomplete commands
set incsearch        " do incremental searching
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set cursorline
nmap gV `[v`]           " highlight last inserted text

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %


"filetype plugin on
"helptags ~/.vim/doc
execute pathogen#infect()


