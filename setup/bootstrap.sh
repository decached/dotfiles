#!/bin/bash
set -e

DOTFILES=("vim" "vimrc" "zshrc", "git/gitconfig")
CONFIG_DIR=$HOME/dotfiles

# Get oh-my-zsh
wget --no-check-certificate \
https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

# Clone dotfiles and deps
if [ -d $CONFIG_DIR ]; then
    echo $CONFIG_DIR exists, renaming it to $CONFIG_DIR-backup
    mv $CONFIG_DIR $CONFIG_DIR-backup
fi

git clone --recursive git@github.com:decached/dotfiles.git ~/dotfiles

# Create symlinks for all files and dirs
for file in $DOTFILES; do
    FILE=$HOME/.$file
    echo Checking $FILE
    if [ -f $FILE ] || [ -d $FILE ]; then
        echo $FILE exists, renaming it to $FILE-backup
        mv $FILE $FILE-backup
    fi
    ln -s $CONFIG_DIR/$file $HOME/.$file
done

# Configure custom zsh files
cp -R $CONFIG_DIR/zsh/oh-my-zsh/* $HOME/.oh-my-zsh
