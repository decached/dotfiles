ram() {
    : '''
    Show how much RAM application uses.
    $ ram safari
    => safari uses 154.69 MBs of RAM.
    '''
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

take() {
    mkdir -p $1
    cd $1
}

### Lazy Load ###
# Don't auto-initiate `nvm`, `rbenv`, `pyenv` as they are slow as fuck

nvm() {
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/zsh_completion" ] && \. "$NVM_DIR/zsh_completion"
}

rbenv() {
    eval "$(rbenv init -)"
}

pyenv() {
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
}
