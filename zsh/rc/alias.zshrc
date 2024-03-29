alias autoremove="sudo apt-get autoremove"
alias c='xclip -selection clipboard'
alias df="df -h"
alias echo="echo -e"
alias inst="sudo apt-get install -y"
alias lsa="ls --group-directories-first --color=auto -A"
alias netusage="sudo vnstat -u -i wlp3s0 && sudo vnstat -i wlp3s0"
alias off="sudo poweroff"
alias purge="sudo apt-get purge"
alias py="python"
alias py3="python3"
alias rasp="ssh pi@rasp.local"
alias reboot="sudo reboot"
alias rf="rm -rf"
alias rgrep="grep -r --exclude-dir=.git --exclude-dir=env --exclude-dir=node_modules --color"
alias rm="rm -i"
alias screenoff="xset dpms force off"
alias sudo='sudo '
alias sz="source ~/.zshrc"
alias tree="tree -I '.git|env|node_modules|*.pyc|bower_components'"
alias updt="sudo apt-get update"
alias upgd="sudo apt-get upgrade"
alias v="vim"
alias vxc="vim ~/.vimrc"
alias zxc="vim ~/.zshrc"

# git
alias ga="git add"
alias gd="git diff"
alias gds="git diff --staged"
alias gst="git status"
alias gstu="git status --untracked-files=no"


# Pacman
alias pin="sudo pacman -Sy"
alias unpin="sudo pacman -Rs"
