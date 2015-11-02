#!/usr/bin/env bash

symlink_files() {
    TOPIC=$1
    TOPIC_PATH=$DOTFILES/$TOPIC

    for file in $TOPIC_PATH/*symlink
    do
        filename=${file##*/}
        ln -s -v -i $file $HOME/.${filename%.symlink}
    done
}

setup_vim() {
    TOPIC="vim"
    ln -s -v -i $DOTFILES/$TOPIC $HOME/.$TOPIC
    symlink_files "vim"
}

set -e
export DOTFILES=${DOTFILES:-$HOME/dotfiles}

symlink_files "git"
symlink_files "zsh"
setup_vim
