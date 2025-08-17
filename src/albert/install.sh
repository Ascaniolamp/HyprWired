#!/bin/env bash
source ../helper.sh
GITSRC=$(dirname "$0")/src

downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"

substitute "$BAKORDEL" "$HOME/.config/albert/config" "$GITSRC/config"
substitute "$BAKORDEL" "/usr/share/albert/widgetsboxmodel/themes/HyprWired.qss" "$GITSRC/HyprWired.qss"

echo "Albert HyprWired theme installed succesfully."