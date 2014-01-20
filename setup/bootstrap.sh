#!/bin/bash
git clone git@github.com:decached/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Vim
ln -s "$(pwd)/vim" ~/.vim
ln -s "$(pwd)/vim/vimrc" ~/.vimrc

# Zsh
ln -s "$(pwd)/zsh/zshrc" ~/.zshrc
ln -s "$(pwd)/zsh/oh-my-zsh" ~/.oh-my-zsh
