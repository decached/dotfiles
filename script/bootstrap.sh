#!/usr/bin/env bash

symlink() {
    TOPIC=$1
    TOPIC_PATH="$DOTFILES/$TOPIC"

    for file in "$TOPIC_PATH/*symlink"
    do
        echo $file
    done
}

setup() {
    TOPIC=$1
    answer="y"

    if [ $TOPIC != "git" ] && [ $TOPIC != "zsh" ]; then
        echo ""
        printf "Would you like to set up $TOPIC? [y/N]: "
        read answer
        answer=${answer:-"N"}
    fi

    if [ $answer = "y" ] || [ $answer = "Y" ]; then
        symlink $TOPIC
    fi
}

setup "git"
setup "zsh"
setup "vim"
