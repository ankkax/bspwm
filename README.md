# bspwm
Basically my current theme is from [bspwm-theme](https://github.com/sorahed/bspwmthemes) <br />
I just added my own modules and changed some shortcuts <br />
alt + enter for terminal


My bspwm settings
![Horizon](/desktop/currentsetup.png)
![Horizon](/desktop/currentsetup2.png)
Im using
	Arch Linux

# Depencies
+ [bspwm-rounded-corners](https://github.com/j-james/bspwm-rounded-corners) 
+ from AUR [bspwm-rounded-corners](https://aur.archlinux.org/packages/bspwm-rounded-corners/)
+ [polybar](https://github.com/polybar/polybar)
+ [kitty](https://github.com/kovidgoyal/kitty)
+ [dunst](https://github.com/dunst-project/dunst)
+ [xwallpaper](https://github.com/stoeckmann/xwallpaper)
+ [pamixer](https://github.com/cdemoulins/pamixer)
+ [picom](https://github.com/yshui/picom)
+ [rofi](https://github.com/davatorium/rofi)
+ [dmenu](https://tools.suckless.org/dmenu/)
+ [fontawesome](https://fontawesome.com/download)
+ [feather font](https://github.com/AT-UI/feather-font)
+ [playerctl](https://github.com/altdesktop/playerctl)


Optional depencies
+ [ytfzf](https://github.com/pystardust/ytfzf)
+ [sxiv](https://520liyan.xyz/explosion-mental/sxiv) you need excatly this build of sxiv to get all the features in desktop
+ [flameshot](https://github.com/flameshot-org/flameshot)
+ [mpv-mpris](https://github.com/hoyon/mpv-mpris)
+ [sxiv](https://github.com/muennich/sxiv)
+ [cava-visualizer](https://github.com/karlstav/cava)
+ [neofetch](https://github.com/dylanaraps/neofetch)
+ [volnoti](https://github.com/davidbrazdil/volnoti)
I recommend using volnoti from AUR it is hard to build on other systems but it is possible
+ [Tock-clock](https://github.com/nwtnni/tock)
+ [setbg-from-lukesmith](https://github.com/LukeSmithxyz/voidrice/tree/master/.local/bin)
+ [sox](https://github.com/chirlu/sox) lay sound in dunst notification <br />
Guide to use wallpaper with SXIV changer thanks for Luke Smith for awesome setbg script <br />
open image with sxiv, press ctrl + x then press w to setbg <br />

## Guides

to get sp script working you need to got `.config/bspwm/utilities/sp` <br />
and add spotify client id and secret. <br />
+ [spotify-developer](https://beta.developer.spotify.com/documentation/general/guides/app-settings/)

super + shift + s to open spotify search <br />
just enter name of the song you want to hear and it will open closest <br />
write sxiv in dmenu prompt and you get current album art and press then you can save it to anywhere in home folder <br />

FIREFOX Setup <br />
from here <br />
https://github.com/vinceliuice/WhiteSur-gtk-theme

Guide to setup fonts <br />
Copy fonts from my repository to $HOME/.fonts/ <br />
and fc-cache --force to apply those fonts <br />

Setting neofetch with image <br />
make alias in zshrc or bashrc <br />
alias neofetch="neofetch --kitty /path/to/your/image.jpg <br />
