set -gx DOTFILES $HOME/dotfiles
set -gx EDITOR nvim

source $DOTFILES/fish/custom/function.fish
source $DOTFILES/fish/custom/abbr.fish

set -g fzf_fd_opts --hidden --max-depth 5

# A local set of fish commands that are host specific source this file at the very end
if test -f $HOME/.local.fish
    source $HOME/.local.fish
end
