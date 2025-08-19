#!/bin/env bash
source $(dirname "$0")/../helper.sh
GITSRC=$(dirname "$0")/src

downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"

substitute "$BAKORDEL" "$HOME/.config/rofi/themes/Hyprlain.rasi" "$GITSRC/Hyprlain.rasi"
substitute "$BAKORDEL" "$HOME/.config/rofi/config.rasi" "$GITSRC/config.rasi"

echo "Rofi Hyprlain theme installed succesfully."