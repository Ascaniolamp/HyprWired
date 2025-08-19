#!/bin/env bash
source $(dirname "$0")/../helper.sh
GITSRC=$(dirname "$0")/src

echo "You might just want to keep these themes for the time in which you'll download their apps."
ynprompt "Would you like to download every theme's relative application?"
if [ $? == 0 ]; then
	downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"
fi

substitute "$BAKORDEL" "$HOME/.local/share/audacious/Skins/lainampborders" "$GITSRC/audacious/lainampborders"
sudo echo "skin=$HOME/.local/share/audacious/Skins/lainampborders" >> "$GITSRC/audacious/config"
substitute "$BAKORDEL" "$HOME/.config/audacious/config" "$GITSRC/audacious/config"

echo "To install the Firefox theme, follow the README's instructions!"

sudo cat "$GITSRC/.profile" >> "$HOME/.profile"
DOTPROFILE_SHLINE="[[ -f ~/.profile ]] && . ~/.profile"
sudo echo "$DOTPROFILE_SHLINE" >> "$HOME/.bashrc"
sudo echo "$DOTPROFILE_SHLINE" >> "$HOME/.zshrc"

echo "Hyprlain dotfiles installed succesfully."