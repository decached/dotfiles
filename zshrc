#!/usr/bin/env zsh

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Optionally, if you set this to "random", it'll load a random theme each # time that oh-my-zsh is loaded.
ZSH_THEME="decached"

DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion

# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/ # Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(git cp colored-man extract screen github web-search history)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/sbin:/bin

# ZSH custom configuration

# Set $PATH
export PATH=/home/akash/Applications/sbt/bin:/opt/homebrew/bin:/opt/homebrew/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH=$HOME/node_modules/.bin:$PATH
export PATH=~/bin:$PATH

# aliases
alias ....="cd ../../../"
alias c="xclip -sel clip"
alias df="df -h"
alias echo="echo -e"
alias gemin="sudo gem install"
alias gitAuthors="git log | grep ^Author: | sed 's/ <.*//; s/^Author: //' | sort | uniq -c | sort -nr"
alias glog="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glp="git log --pretty=oneline"
alias gls="git log --pretty=short"
alias inst="sudo apt-get install"
alias l="less"
alias off="sudo poweroff"
alias pipin="sudo pip install"
alias pipun="sudo pip uninstall"
alias purge="sudo apt-get purge"
alias reboot="sudo reboot"
alias rf="rm -rf"
alias screenoff="xset dpms force off"
alias sz="source ~/.zshrc"
alias updt="sudo apt-get update"
alias vxc="vim ~/.vimrc"
alias zxc="vim ~/.zshrc"

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# Show how much RAM application uses.
# # $ ram safari
# # # => safari uses 154.69 MBs of RAM.
function ram()
{
    local sum
    local items
    local app="$1"
    if [ -z "$app" ]; then
        echo "First argument - pattern to grep from processes"
    else
        sum=0
        for i in `ps aux | grep -i "$app" | grep -v "grep" | awk '{print $6}'`; do
            sum=$(($i + $sum))
        done
        sum=$(echo "scale=2; $sum / 1024.0" | bc)
        if [[ $sum != "0" ]]; then
            echo "${fg[blue]}${app}${reset_color} uses ${fg[green]}${sum}${reset_color} MBs of RAM."
        else
            echo "There are no processes with pattern '${fg[blue]}${app}${reset_color}' are running."
        fi
    fi
}


# Count code lines in some directory.
# # $ loc py js css
# # # => Lines of code for .py: 3781
# # # => Lines of code for .js: 3354
# # # => Lines of code for .css: 2970
# # # => Total lines of code: 10105
function loc()
{
    local total
    local firstletter
    local ext
    local lines
    total=0
    for ext in $@; do
        firstletter=$(echo $ext | cut -c1-1)
        if [[ firstletter != "." ]]; then
            ext=".$ext"
        fi
        lines=`find-exec "*$ext" cat | wc -l`
        lines=${lines// /}
        total=$(($total + $lines))
        echo "Lines of code for ${fg[blue]}$ext${reset_color}: ${fg[green]}$lines${reset_color}"
    done
    echo "${fg[blue]}Total${reset_color} lines of code: ${fg[green]}$total${reset_color}"
}

function py2to3()
{
    ln -s /usr/bin/python3 ~/bin/python
    ln -s /usr/bin/python3-config ~/bin/python-config
}

function py3to2()
{
    rm ~/bin/python
    rm ~/bin/python-config
}
