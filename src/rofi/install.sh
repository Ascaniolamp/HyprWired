#!/bin/env bash
GITSRC=$(dirname "$0")/src
source $GITSRC/../helper.sh

downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"

substitute "$BAKORDEL" "$HOME/.config/rofi/themes/Hyprlain.rasi" "$GITSRC/Hyprlain.rasi"
substitute "$BAKORDEL" "$HOME/.config/rofi/config.rasi" "$GITSRC/config.rasi"

echo "Rofi Hyprlain theme installed succesfully."