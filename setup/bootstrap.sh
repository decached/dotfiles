#!/bin/bash
git clone git@github.com:decached/dotfiles.git ~/dotfiles
cd ~/dofiles

# Vim
ln -s vim ~/.vim
ln -s vimrc ~/.vimrc

# Zsh
ln -s zshrc ~/.zshrc
