# Source Prezto.
export DOTFILES="$HOME/dotfiles"

if [[ -s "$HOME/.zprezto/init.zsh" ]]; then
    source "$HOME/.zprezto/init.zsh"
fi

# Load all custom paths, alias and functions
source "$DOTFILES/zsh/rc/path.zshrc"
source "$DOTFILES/zsh/rc/alias.zshrc"
source "$DOTFILES/zsh/rc/functions.zshrc"

# Initialize the completion engine
autoload -U compinit
compinit

# Load all custom completions
source "$DOTFILES/zsh/.completion"

# Stash your environment variables in ~/.localrc. This means they'll stay out of
# your main dotfiles repository (which may be public, like this one), but you'll
# have access to them in your scripts.
if [[ -a ~/.localrc ]]
then
    source ~/.localrc
fi
