#!/bin/env bash
GITSRC=$(dirname "$0")/src
source $GITSRC/helper.sh

downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"

NERDFONT_DIR=/usr/local/share/fonts/ttf/AdwaitaMonoNerd
NERDFONT_URL=https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/AdwaitaMono.zip
NERDFONT_ZIP=$(basename -- "$NERDFONT_URL")
handleold "$BAKORDEL" "$NERDFONT_DIR"
sudo wget $NERDFONT_URL -P $NERDFONT_DIR/.
sudo unzip $NERDFONT_DIR/$NERDFONT_ZIP -d $NERDFONT_DIR/.
sudo rm $NERDFONT_DIR/$NERDFONT_ZIP

# $GITSRC/albert/install.sh $1
$GITSRC/dotfiles/install.sh $1
$GITSRC/gtkqtxdg/install.sh $1
$GITSRC/hyprland/install.sh $1
$GITSRC/rofi/install.sh $1
$GITSRC/sddm/install.sh $1
$GITSRC/spotify/install.sh $1
$GITSRC/vesktop/install.sh $1

echo "Hyprlain was succesfully installed!"
ynprompt "Would you like to remove all installation files?"
if [ $? == 0 ]; then
	rm -r $(dirname "$0")
fi

echo "A restart is required for changes to take effect."
ynprompt "Would you like to restart your device right now?"
if [ $? == 0 ]; then
	reboot
fi