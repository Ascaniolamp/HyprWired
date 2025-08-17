#!/bin/env bash
source ../helper.sh
GITSRC=$(dirname "$0")/src

downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"

substitute "$BAKORDEL" "$HOME/.config/rofi/themes/HyprWired.rasi" "$GITSRC/HyprWired.rasi"
substitute "$BAKORDEL" "$HOME/.config/rofi/config.rasi" "$GITSRC/config.rasi"

echo "Rofi HyprWired theme installed succesfully."