export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-"$HOME/.config"}
export DOTFILES="$HOME/dotfiles"

# Source prezto
if [[ -s "$XDG_CONFIG_HOME/.zprezto/init.zsh" ]]; then
    source "$XDG_CONFIG_HOME/.zprezto/init.zsh"
fi

# Load all custom paths, alias, functions and completions
source "$DOTFILES/zsh/custom/path.zsh"
source "$DOTFILES/zsh/custom/alias.zsh"
source "$DOTFILES/zsh/custom/function.zsh"

# Initialize the completion engine
fpath=(~/.zsh/completion $fpath)

autoload -Uz compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
    compinit;
else
    compinit -C;
fi;

for dump in ~/.zcompdump(N.mh+24); do
    compinit
done

# Stash your environment variables in ~/.localrc. This means they'll stay out of
# your main dotfiles repository (which may be public, like this one), but you'll
# have access to them in your scripts.
if [[ -a ~/.localrc ]]
then
    source ~/.localrc
fi
