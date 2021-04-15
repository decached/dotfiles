export PATH="/usr/local/bin:$PATH"

# nvm: Node Version Manager
export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh" --no-use

# pyenv: Python Version Manager
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init - --no-rehash)"
fi
export PYTHON_CONFIGURE_OPTS="--enable-framework"

# go:
export GOPATH="$HOME/workspace/go"
export PATH="$HOME/workspace/go/bin:$PATH"

# user binaries
export PATH="$HOME/bin:$PATH"
