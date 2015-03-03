#!/usr/bin/env zsh

# ZSH Configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="decached"

DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

plugins=(colored-man command-not-found copyfile cp debian encode64 extract fabric git lein pip python redis-cli screen sudo tmux web-search history)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:$HOME/.bin:$PATH

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' \
    hosts \
    'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

export PATH="/usr/local/heroku/bin:$PATH"
source ~/.officeZshAlias.zshrc


export PATH="/home/akash/Downloads/android-sdk-linux/platform-tools:$PATH"
[[ -s "/etc/profile.d/vte.sh" ]] && . "/etc/profile.d/vte.sh"

# dotfiles configuration
DOTFILES_DIR=$HOME/dotfiles
CUSTOM_ZSH=($DOTFILES_DIR/zsh/*.zsh)
for f in $CUSTOM_ZSH
do
    source $f
done
