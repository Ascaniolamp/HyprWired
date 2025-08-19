#!/bin/env bash
source $(dirname "$0")/../helper.sh
GITSRC=$(dirname "$0")/src

downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"

substitute "$BAKORDEL" "/etc/sddm.conf" "$GITSRC/sddm.conf"
substitute "$BAKORDEL" "/usr/share/sddm/themes/Hyprlain" "$GITSRC/Hyprlain"

echo "SDDM Hyprlain theme installed succesfully. Test with the following command:"
echo "sddm-greeter --test-mode --theme /usr/share/sddm/themes/Hyprlain"