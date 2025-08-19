#!/bin/env bash
source $(dirname "$0")/../helper.sh
GITSRC=$(dirname "$0")/src

downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh

spicetify
spicetify backup apply enable-devtools

substitute "$BAKORDEL" "$HOME/.config/spicetify/Themes/Hyprlain" "$GITSRC/Hyprlain"
substitute "$BAKORDEL" "$HOME/.config/spicetify/config-xpui.ini" "$GITSRC/config-xpui.ini"

spicetify apply
spicetify refresh
spicetify update

echo "Spotify Hyprlain theme installed succesfully."