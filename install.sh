#!/bin/bash

cwd=`pwd`

echo $cwd
for i in screenrc	gitignore	gvimrc		vimrc
do
  echo "ln -s $cwd/$i ~/.$i"
  ln -s $cwd/$i ~/.$i
done



