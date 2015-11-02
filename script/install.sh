#!/usr/bin/env bash

command_exists () {
    command -v "$1";
}

main() {

    # Check if `git` exists
    if [ ! $(command_exists git) ]; then
        printf "${YELLOW}git is not installed!${NORMAL} Please install git first!\n"
        exit
    fi

    env git clone --recursive https://github.com/decached/dotfiles.git $DOTFILES || {
        printf "Error: git clone of decached/dotfiles failed\n"
        # exit 1
    }

    # rm -rf $DOTFILES

    # Check if `zsh` exists
    if [ ! $(command_exists zsh) ]; then
        printf "${YELLOW}Zsh is not installed!${NORMAL} Please install zsh first!\n"
        exit
    fi

    # Set zsh as default shell
    chsh -s /bin/zsh

    # Clone prezto (zsh manager)
    env git clone --recursive https://github.com/sorin-ionescu/prezto.git "$HOME/.zprezto" || {
        printf "Error: git clone of sorin-ionescu/prezto failed\n"
        exit 1
    }
}

set -e
export DOTFILES="$HOME/dotfiles"
main
env sh $DOTFILES/script/bootstrap.sh
