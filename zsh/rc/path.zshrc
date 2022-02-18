export PATH="/usr/local/bin:$PATH"

# Don't auto-initiate `nvm` as it's slow as fuck
nvm() {
    export NVM_DIR=$HOME/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/zsh_completion" ] && \. "$NVM_DIR/zsh_completion"
}

export PROJECT_HOME="$HOME/workspace"

# golang
export GOPATH="$HOME/workspace/go"
export PATH="$HOME/workspace/go/bin:$PATH"

# python
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/bin:$PATH"
