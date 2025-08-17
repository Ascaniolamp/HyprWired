# HyprWired

A set of themes inspired by Serial Experiments Lain.<br>
This was supposed to be my personal rice,<br>
but I thought others may like it and wand to use it too!<br>

![](./src/hyprland/cmdwired.gif)
![](./src/hyprland/wlogout.png)
![](./src/hyprland/background.gif)

![](./src/sddm/showcase.mp4)
![](./src/dotfiles/firefox.gif)
![](./src/rofi/showcase.png)
![](./src/spotify/showcase.png)
![](./src/vesktop/showcase.png)
![](./src/gtkqtxdg/qtshowcase.png)
![](./src/gtkqtxdg/gtkshowcase.png)
![](./src/dotfiles/audacious.gif)

## ‼️🚨⚠️ DISCLAIMER ⚠️🚨‼️

As I said, this started off and was supposed to be a personal project.<br>
When I had finished working on it, I decided to share it to the public.<br>

That's why I was careless about tracking any credits or sources<br>
(a bona fide mistake which I tried to make up to as well as I could).<br>
Therefore, even though all submodules in this repo are distributed under the GPLv3.0 license,<br>
the ones with a `LICENSE` file in their folder are excluded (ex. spotify, vesktop).<br>
I also do not own **any** of the rights to the graphics and audio assets used.<br>
(See ["Credits"](.#Credits))<br>

Because of the same reason, **nothing** in this project is made to be professional nor elegant:<br>
not the scripts, not the config files, nothing!<br>

I highly reccomend you either check (and maybe even modify) the installation<br>
scripts or just avoid them completely, as they can be kind of destructive<br>
in regards to your old configuration files.<br>

Only use the `--no-preserve` option if you know what you're doing<br>
and have already backed up your previous configuration files.<br>
If any problems arise after running the scripts, replace the new configuration<br>
files with the old, backed up ones (ending in `.hyprwiredbak`).<br>

By reviewing the scripts, you'll easily find the directories that are utilized,<br>
so that you can manually install the configuration files yourself.<br>
With this being said, if you're on a freshly-installed system, they shouldn't<br>
be neither dangerous nor destructive (as you might not have many dotfiles yet).<br>

### ❗ Important Notes ❗
- Various repositories are included in the installation scripts.<br>
  If you wish to review them, they're listed in each module's<br>
  `src/aurpkgs.lst` and `src/pacpkgs.lst` files<br>
  (some may have more listed in their READMEs).<br>
- You should be able to install every module individually (stand-alone).<br>
- To install submodules individually (each one has an install.sh script),<br>
  you'll need to put the `helper.sh` script in the module's parent directory.<br>
- Even though the themes and configurations are under the name HyprWired,<br>
  most submodules are compatible with non-hyprland installations.<br>
- When applying a theme in nwg-look (by clicking the GUI "apply" button),<br>
  the .config/assets folder will automatically be deleted!<br>
  This is because of nwg-look, it doesn't have anything to do with me!<br>

## Credits
Most credits are inside every submodule's README.<br>
I'm currently looking for all due credits.<br>
If you think you should be on this list, [contact me](mailto:ascaniolamp@gmail.com)!<br>

### Fauux
Most (if not all) of the amazing graphics come from fauux's [neocities page](https://fauux.neocities.org).<br>
If you're able to do so, please [send them a donation](https://paypal.com/donate/?hosted_button_id=EED5LRPSLVP4Q), they really deserve it!<br>
Also, go check out their [other project](https://thaer.no) and their [youtube channel](https://youtube.com/@fauux) if you're interested.<br>

They own basically all the art that was used inside this project.<br>
Therefore, all graphics aren't distributed under any of my licenses.<br>

## Content
- [Hyprland Theme](./src/hyprland)
- [SDDM Theme](./src/sddm)
- [Rofi Launcher Theme](./src/rofi)
- [Spotify Theme](./src/spotify)
- [Vesktop Theme](./src/vesktop)
- [GTK & QT Themes](./src/gtkqtxdg)
- [Audacious Theme](./src/dotfiles#Audacious)
- [Kitty Theme](./src/dotfiles#Kitty)
- [Firefox Theme](./src/dotfiles#Firefox)
- [More](./src/dotfiles#Others)
- *[Albert Launcher Theme](./src/albert)

\* Some submodules aren't included in the main installation script.

## TODO
- [ ] Replace GTK's adwaita with custom theme
- [ ] Add gtkshowcase.png