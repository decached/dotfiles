# Node Version Manager

# Don't auto-initiate `nvm` as it's slow as fuck
load_nvm() {
    export NVM_DIR=$HOME/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
}

export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/workspace"
export VIRTUALENVWRAPPER_SCRIPT="/usr/local/bin/virtualenvwrapper.sh"

load_vew() {
    source /usr/local/bin/virtualenvwrapper_lazy.sh
}

export GOPATH="$HOME/workspace/go"
export PATH="$HOME/workspace/go/bin:$PATH"
export PATH="$HOME/bin:$PATH"
