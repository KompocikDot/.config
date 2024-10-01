#!/usr/bin/env bash

read -p "Are you sure? All config files will be overwritten" -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi


mkdir -p /usr/share/rofi/themes
cp rofi/base16-gruvbox-material-dark-medium.rasi /usr/share/rofi/themes/base16-gruvbox-material-dark-medium.rasi

cp . ~/.config/
