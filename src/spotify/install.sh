#!/bin/env bash
source $(dirname "$0")/../helper.sh
GITSRC=$(dirname "$0")/src

downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"

echo "prefs_path = $HOME/.config/spotify/prefs" >> "$GITSRC/config-xpui.ini"
echo "spotify_path = $HOME/.local/share/spotify-launcher/install/usr/share/spotify/" >> "$GITSRC/config-xpui.ini"
substitute "$BAKORDEL" "$HOME/.config/spicetify/Themes/Hyprlain" "$GITSRC/Hyprlain"
substitute "$BAKORDEL" "$HOME/.config/spicetify/config-xpui.ini" "$GITSRC/config-xpui.ini"

mkdir -p "$HOME/.config/spotify"
touch "$HOME/.config/spotify/prefs"

(curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh) || true
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
spicetify
spicetify backup apply
spicetify update
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
spicetify apply

echo "Spotify Hyprlain theme installed succesfully."