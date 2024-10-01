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
cp . ~/.config/

echo "Done"
