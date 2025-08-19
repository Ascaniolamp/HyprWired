#!/bin/env bash
GITSRC=$(dirname "$0")/src
source $GITSRC/../helper.sh

downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"

substitute "$BAKORDEL" "$HOME/.config/albert/config" "$GITSRC/config"
substitute "$BAKORDEL" "/usr/share/albert/widgetsboxmodel/themes/Hyprlain.qss" "$GITSRC/Hyprlain.qss"

echo "Albert Hyprlain theme installed succesfully."