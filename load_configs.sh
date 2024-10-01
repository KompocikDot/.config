#!/usr/bin/env bash

read -p "Are you sure? All config files will be overwritten" -n 1 -r
echo

if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

echo "Installing all dependencies"
sudo pacman -S autorandr kitty rofi neovim xclip xdotool

echo "Dependencides installed, copying config files"

mkdir -p /usr/share/rofi/themes
cp rofi/base16-gruvbox-material-dark-medium.rasi /usr/share/rofi/themes/base16-gruvbox-material-dark-medium.rasi

cp . ~/.config/

echo "Done"
