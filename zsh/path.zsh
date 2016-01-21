# Node Version Manager

# Don't auto-initiate `nvm` as it's slow as fuck
load_nvm() {
    export NVM_DIR=$HOME/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
}
