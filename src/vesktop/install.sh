#!/bin/env bash
GITSRC=$(dirname "$0")/src
source $GITSRC/../helper.sh

downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"

substitute "$BAKORDEL" "$HOME/.config/vesktop/settings/settings.json" "$GITSRC/settings.json"
substitute "$BAKORDEL" "$HOME/.config/vesktop/themes/hyprlain.theme.css" "$GITSRC/hyprlain.theme.css"

echo "Vesktop Hyprlain theme installed succesfully."