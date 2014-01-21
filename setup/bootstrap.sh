#!/bin/bash
set -e
# Set some colors"
Red="\033[1;31m"
Gre="\033[1;32m"
Cya="\033[1;36m"
Whi="\033[4;97m"
RCol="\033[0m"

DOTFILES=("vim" "vimrc" "zshrc" "gitconfig")
DOTFILES_DIR=dotfiles

deps_check() {
    # Check for dependencies
    echo -e "\n${Whi}Dependency Check${RCol}"
    deps=("vim" "zsh" "git")
    FAIL=0
    for dep in ${deps[@]}
    do
        echo -n "$dep"
        if [ `command -v $dep` ]; then
            echo -e " ${Gre}✓ ${RCol}"
        else
            echo -e " ${Red}✗ ${RCol}"
            FAIL=1
        fi
    done
    return $FAIL
}

get_zsh() {
    # Get oh-my-zsh
    echo -e "\n${Whi}Looking for existing ~/.oh-my-zsh${RCol}"
    ZSH_DIR=.oh-my-zsh
    if [ -d $HOME/$ZSH_DIR ]; then
        echo -e "${Cya}$ZSH_DIR ${RCol}exists, moving it to \
            ${Cya}$ZSH_DIR-backup${RCol} ${Gre}✓ ${RCol}"
        # mv $ZSH_DIR $ZSH_DIR-backup
    fi
    wget --no-check-certificate \
        https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
}

customize_zsh() {
    cp -R $HOME/$DOTFILES_DIR/zsh/custom-oh-my-zsh/* $HOME/.oh-my-zsh
}

get_dotfiles() {
    # Clone dotfiles and deps
    echo -e "\n${Whi}Looking for existing ~/$DOTFILES_DIR${RCol}"
    if [ -d $HOME/$DOTFILES_DIR ]; then
        echo -e "${Cya}$DOTFILES_DIR ${RCol}exists, moving it to ${Cya}$DOTFILES_DIR-backup${RCol} ${Gre}✓ ${RCol}"
        # mv $DOTFILES_DIR $DOTFILES_DIR-backup
    fi
    # git clone --recursive git@github.com:decached/dotfiles.git ~/dotfiles

}

create_symlinks() {
    # Create symlinks for all files and dirs
    echo -e "\n${Whi}Symlinks Creation${RCol}"
    for FILE in ${DOTFILES[@]};
    do
        actual_path=$HOME/.$FILE
        echo -e "${Cya}$FILE ${RCol}"

        if [ -d $actual_path ] || [ -f $actual_path ]; then
            echo -e "$FILE already exists, moving it to $FILE-backup ${Gre}✓ ${RCol}"
            mv $actual_path $(echo $actual_path-backup)
        fi

        echo -e "Creating symlink ${Gre}✓ ${RCol}\n"
        ln -s $HOME/$DOTFILES_DIR/$FILE $HOME/.$FILE
    done


}

deps_check
if [ $? -ne 0 ]; then
    exit 1
fi

rm -rf $HOME/.*-backup # Remove backup files
get_zsh
get_dotfiles
create_symlinks
customize_zsh
