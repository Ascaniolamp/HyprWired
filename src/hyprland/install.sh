#!/bin/env bash
source ../helper.sh
GITSRC=$(dirname "$0")/src

downdependencies "$GITSRC/pacpkgs.lst" "$GITSRC/aurpkgs.lst"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

jq --arg IMGPATH "$HOME/.config/assets/media/imgs/icons/favicon_32px.png" '.image.path = $IMGPATH' $GITSRC/waybar/config.jsonc

substitute "$BAKORDEL" "$HOME/.config/wlogout/style.css" "$GITSRC/wlogout/style.css"
substitute "$BAKORDEL" "$HOME/.config/waybar/config.json" "$GITSRC/waybar/config.json"
substitute "$BAKORDEL" "$HOME/.config/waybar/power_menu.xml" "$GITSRC/waybar/power_menu.xml"
substitute "$BAKORDEL" "$HOME/.config/waybar/style.css" "$GITSRC/waybar/style.css"
substitute "$BAKORDEL" "$HOME/.config/hypr" "$GITSRC/hypr"
substitute "$BAKORDEL" "$HOME/.config/dunst/dunstrc" "$GITSRC/dunst/dunstrc"
substitute "$BAKORDEL" "$HOME/.config/assets" "$GITSRC/assets"

substitute "$BAKORDEL" "$HOME/.config/neofetch/config.conf" "$GITSRC/neofetch/config.conf"
substitute "$BAKORDEL" "$HOME/.config/neofetch/logo" "$GITSRC/neofetch/logo"

substitute "$BAKORDEL" "$HOME/.config/kitty/kitty.conf" "$GITSRC/kitty/kitty.conf"
substitute "$BAKORDEL" "$HOME/.config/kitty/current-theme.conf" "$GITSRC/kitty/current-theme.conf"
substitute "$BAKORDEL" "$HOME/.config/kitty/themes/hyprwired.conf" "$GITSRC/kitty/themes/hyprwired.conf"
substitute "$BAKORDEL" "$HOME/.config/kitty/themes/hyprwired.conf-colors" "$GITSRC/kitty/themes/hyprwired-colors.conf"

cat $GITSRC/.profile >> $HOME/.profile
DOTPROFILE_SHLINE="[[ -f ~/.profile ]] && . ~/.profile"
echo $DOTPROFILE_SHLINE >> $HOME/.bashrc
echo $DOTPROFILE_SHLINE >> $HOME/.zshrc

echo "Hyprland HyprWired theme installed succesfully."