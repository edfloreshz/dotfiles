#!/bin/sh

# Get the current configuration.

# Home directories
CONFIG=$HOME/.config 
ROFI=$CONFIG/rofi
POLYBAR=$CONFIG/polybar
LEFTWM=$CONFIG/leftwm 
WAYBAR=$CONFIG/waybar
TMUX=$HOME/.tmux.conf 
SWAY=$CONFIG/sway
AWESOME=$CONFIG/awesome

# Repository directories
REPO=$(pwd)
REPO_CONFIG=$REPO/.config 
REPO_ROFI=$REPO_CONFIG/rofi
REPO_POLYBAR=$REPO_CONFIG/polybar
REPO_LEFTWM=$REPO_CONFIG/leftwm 
REPO_WAYBAR=$REPO_CONFIG/waybar
REPO_SWAY=$REPO_CONFIG/sway
REPO_AWESOME=$REPO_CONFIG/awesome

# Delete old folders
rm -rf $REPO_CONFIG
echo "Removed old .config"

# Ensure folders are present
[ ! -d $REPO_CONFIG     ] && mkdir $REPO_CONFIG
[ ! -d $REPO_ROFI       ] && mkdir $REPO_ROFI
[ ! -d $REPO_POLYBAR    ] && mkdir $REPO_POLYBAR
[ ! -d $REPO_LEFTWM     ] && mkdir $REPO_LEFTWM
[ ! -d $REPO_WAYBAR     ] && mkdir $REPO_WAYBAR
[ ! -d $REPO_SWAY       ] && mkdir $REPO_SWAY
[ ! -d $REPO_AWESOME    ] && mkdir $REPO_AWESOME

# Dotfiles 

## Get user dotfiles.
cp $HOME/{.gitconfig,.zshrc,.alacritty.yml,.bashrc,.vimrc,.xprofile} .
echo "Obtained dotfiles"

# Rofi
[ -d $ROFI ] && cp -r $ROFI $REPO_CONFIG

# Polybar
[ -d $POLYBAR ] && cp -r $POLYBAR/config $REPO_POLYBAR

# Leftwm
[ -d $LEFTWM ] && cp -r $LEFTWM/config.toml $REPO_LEFTWM

# Waybar

[ -d $WAYBAR ] && cp -r $WAYBAR/config $REPO_WAYBAR

# Tmux

[ -d $TMUX ] && cp $TMUX .

# Sway

[ -d $SWAY ] && cp $SWAY/config $REPO_SWAY  

# Awesome WM

[ -d $AWESOME ] && cp -r $AWESOME/* $REPO_AWESOME