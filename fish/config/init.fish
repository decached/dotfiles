set -gx DOTFILES "$HOME/dotfiles"
set -gx EDITOR vim

source $DOTFILES/fish/config/customization/abbr.fish



## Enable the time to be displayed.
set -g theme_display_time yes
set -g theme_display_group no
set -g theme_display_hostname no
set -g theme_display_batt no
set -g theme_display_batt_icon no

## Don't disable jobs indicator.
set -g theme_display_jobs no

## Always display the jobs indicator, even if there are no jobs.
set -g theme_display_jobs_always yes
set -g theme_color_user 045d56

# A local set of fish commands that are host specific
# source this file at the very end
source $HOME/.local.fish