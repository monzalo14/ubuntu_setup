#!/usr/bin/env bash

# Install Neovim from source repository
sudo apt-get -y install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get -y update
sudo apt-get -y install neovim

# Create init.vim file to replace vim with nvim
mkdir -p ~/.config/nvim
echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc" > ~/.config/nvim/init.vim

