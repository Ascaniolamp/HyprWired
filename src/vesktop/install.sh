#!/bin/env bash
source ../helper.sh
GITSRC=$(dirname "$0")/src

downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"

substitute "$BAKORDEL" "$HOME/.config/vesktop/settings/settings.json" "$GITSRC/settings.json"
substitute "$BAKORDEL" "$HOME/.config/vesktop/themes/hyprwired.theme.css" "$GITSRC/hyprwired.theme.css"

echo "Vesktop HyprWired theme installed succesfully."