#!/bin/env bash
source $(dirname "$0")/../helper.sh
GITSRC=$(dirname "$0")/src

downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"

substitute "$BAKORDEL" "$HOME/.gtkrc-2.0" "$GITSRC/.gtkrc-2.0"
substitute "$BAKORDEL" "$HOME/.config/nwg-look/config" "$GITSRC/nwg-look/config"
substitute "$BAKORDEL" "$HOME/.config/gtk-3.0/settings.ini" "$GITSRC/gtk-3.0/settings.ini"
substitute "$BAKORDEL" "$HOME/.config/gtk-4.0/settings.ini" "$GITSRC/gtk-4.0/settings.ini"
substitute "$BAKORDEL" "/usr/share/themes/hyprlain" "$GITSRC/hyprlain"

substitute "$BAKORDEL" "$HOME/.config/xdg-desktop-portal/hyprland-portals.conf" "$GITSRC/hyprland-portals.conf"
substitute "$BAKORDEL" "$HOME/.config/xsettingsd.conf" "$GITSRC/xsettingsd.conf"

substitute "$BAKORDEL" "$HOME/.config/qt5ct/qt5ct.conf" "$GITSRC/qt5ct/qt5ct.conf"
substitute "$BAKORDEL" "$HOME/.config/qt5ct/colors/Hyprlain.conf" "$GITSRC/qt5ct/Hyprlain.conf"
substitute "$BAKORDEL" "$HOME/.config/qt6ct/qt6ct.conf" "$GITSRC/qt6ct/qt6ct.conf"
substitute "$BAKORDEL" "$HOME/.config/qt6ct/colors/Hyprlain.conf" "$GITSRC/qt6ct/Hyprlain.conf"

echo "color_scheme_path=$HOME/.config/qt6ct/colors/Hyprlain.conf" >> $HOME/.config/qt6ct/qt6ct.conf
echo "color_scheme_path=$HOME/.config/qt5ct/colors/Hyprlain.conf" >> $HOME/.config/qt5ct/qt5ct.conf

echo "GTK & Qt Hyprlain themes installed succesfully."