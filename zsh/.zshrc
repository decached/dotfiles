# Source Prezto.
zmodload zsh/zprof
export DOTFILES="$HOME/dotfiles"

if [[ -s "$HOME/.zprezto/init.zsh" ]]; then
    source "$HOME/.zprezto/init.zsh"
fi

# Load all custom paths, alias, functions and completions
source "$DOTFILES/zsh/rc/path.zshrc"
source "$DOTFILES/zsh/rc/alias.zshrc"
source "$DOTFILES/zsh/rc/functions.zshrc"
source "$DOTFILES/zsh/rc/completions.zshrc"

# Initialize the completion engine
fpath=(~/.zsh/completion $fpath)

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
    compinit
done
compinit -C

# Stash your environment variables in ~/.localrc. This means they'll stay out of
# your main dotfiles repository (which may be public, like this one), but you'll
# have access to them in your scripts.
if [[ -a ~/.localrc ]]
then
    source ~/.localrc
fi
