#!/usr/bin/env zsh

# This script is used to stow files in the home directory.
if [[ -z $STOW_FOLDERS ]]; then
    STOW_FOLDERS="tmux,zsh"
fi

if [[ -z $DOTFILES ]]; then
    DOTFILES=$HOME/.dotfiles
fi

for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "stow $folder"
    stow -D $folder
    stow $folder
done
