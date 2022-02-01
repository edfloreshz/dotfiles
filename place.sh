#!/bin/sh

# This script copies the dotfiles from the repository to the user home folder.

# Copy dotfiles to HOME.
cp -r .gitconfig .zshrc .alacritty.yml .bashrc .vimrc .xprofile $HOME/

# Remove and recreate WM directories.
rm -rf .config/{rofi,polybar,leftwm}
mkdir -p .config/{rofi,polybar,leftwm}

# Copy configuration files to HOME.
[ -d $HOME/.config ] && cp -r .config/* $HOME/.config
