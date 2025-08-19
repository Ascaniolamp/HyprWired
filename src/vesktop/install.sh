#!/bin/env bash
source $(dirname "$0")/../helper.sh
GITSRC=$(dirname "$0")/src

downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"

substitute "$BAKORDEL" "$HOME/.config/vesktop/settings/settings.json" "$GITSRC/settings.json"
substitute "$BAKORDEL" "$HOME/.config/vesktop/themes/hyprlain.theme.css" "$GITSRC/hyprlain.theme.css"

echo "Vesktop Hyprlain theme installed succesfully."