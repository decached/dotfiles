#!/usr/bin/zsh

set -e
# Set some colors"
Red="\033[1;31m"
Gre="\033[1;32m"
Cya="\033[1;36m"
UWhi="\033[4;37m"
UBWhi="\033[4;97m"
RCol="\033[0m"

DOTFILES=("vim" "vimrc" "zshrc" "gitconfig")
DOTFILES_DIR=dotfiles

deps_check() {
    # Check for dependencies
    echo -e "\n${UBWhi}Dependency Check${RCol}"
    deps=("vim" "zsh" "git")
    FAIL=0
    for dep in ${deps[@]}
    do
        echo -ne "${Cya}$dep ${RCol}"
        if [ `command -v $dep` ]; then
            echo -e "${Gre}✓ ${RCol}"
        else
            echo -e "${Red}✗ ${RCol}"
            FAIL=1
        fi
    done
    return $FAIL
}

get_dotfiles() {
    # Clone dotfiles and deps
    echo -e "\n${UBWhi}Looking for existing ~/$DOTFILES_DIR${RCol}"
    if [ -d $HOME/$DOTFILES_DIR ]; then
        mv $DOTFILES_DIR $DOTFILES_DIR-backup
        echo -e "${Cya}$DOTFILES_DIR ${RCol}exists, moving it to ${Cya}$DOTFILES_DIR-backup${RCol} ${Gre}✓ ${RCol}"
    fi
    git clone --recursive git@github.com:decached/dotfiles.git ~/dotfiles

}

create_symlinks() {
    # Create symlinks for all files and dirs
    echo -e "\n${UBWhi}Symlinks Creation${RCol}"
    for FILE in ${DOTFILES[@]};
    do
        actual_path=$HOME/.$FILE
        if [ -d $actual_path ] || [ -f $actual_path ]; then
            mv $actual_path $(echo $actual_path-backup)
            echo -e "${Cya}~/.$FILE${RCol} already exists, moving to ${Cya}$~/.$FILE-backup${RCol} ${Gre}✓ ${RCol}"
        fi

        ln -s $HOME/$DOTFILES_DIR/$FILE $HOME/.$FILE
        echo -e "Creating symlink => ${Cya}~/.$FILE${RCol} ${Gre}✓ ${RCol}\n"
    done


}

customize_zsh() {
    cp -R $HOME/$DOTFILES_DIR/zsh/custom-oh-my-zsh/* $HOME/.oh-my-zsh
}

deps_check
if [ $? -ne 0 ]; then
    exit 1
fi

rm -rf $HOME/.*-backup # Remove backup files
get_dotfiles
create_symlinks
customize_zsh
