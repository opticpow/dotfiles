#!/bin/bash

set -e

SAVE_PWD=$PWD

cd $HOME

for dotfile in .bash_profile .vimrc .screenrc
do
  if [[ ! -f $dotfile ]]
  then
    echo "Creating link for $dotfile"
    ln -s dotfiles/$dotfile .
  else
    echo "Skipping $dotfile as it exists"
  fi


done

cd $SAVE_PWD

# vim: tabstop=2 shiftwidth=2 softtabstop=2 expandtab autoindent:
