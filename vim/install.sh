#!/bin/sh
cd "$(dirname "$0")"
VIM_ROOT=$(pwd -P)

if [[ -e $HOME/.vimrc || -e $HOME/.vim ]]; then
  echo "Ooops: ~/.vimrc or ~/.vim already exists. \n\
       It looks like you already have some vim configuration. \n\
       Try to run ./uninstall.sh"
else
  echo === Checking out vundle
  git submodule update --init
  cd -
  echo === $VIM_ROOT
  echo === Linking vim directories
  ln -s $VIM_ROOT $HOME/.vim
  ln -s $VIM_ROOT $HOME/.config/nvim
  ln -s $VIM_ROOT/vimrc $HOME/.vimrc
  ln -s $VIM_ROOT/vimrc $HOME/.config/nvim/init.vim

  echo === Vundling
  vim +PluginInstall +qall

  echo === Done
fi
