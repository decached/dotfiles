alias lsa="ls --group-directories-first --color=auto -A"
alias py3="python3"
alias rm="rm -i"

# laziness
alias v="vim"
alias sz="source ~/.zshrc"

# misc
alias c='xclip -selection clipboard'
alias rgrep="grep -r --exclude-dir=.git --exclude-dir=env --exclude-dir=node_modules --color"
alias tree="tree -I '.git|env|node_modules|*.pyc|bower_components'"

# git
alias ga="git add"
alias gd="git diff"
alias gds="git diff --staged"
alias gst="git status"
alias gstu="git status --untracked-files=no"

# ubuntu
alias autoremove="sudo apt-get autoremove"
alias inst="sudo apt-get install -y"
alias purge="sudo apt-get purge"
alias updt="sudo apt-get update"
alias upgd="sudo apt-get upgrade"

# pacman
alias pin="sudo pacman -Sy"
alias unpin="sudo pacman -Rs"
