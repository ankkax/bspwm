# bspwm
Basically my current theme is from https://github.com/sorahed/bspwmthemes
I just added my own modules and changed some shortcuts
alt + enter for terminal


My bspwm settings
![Horizon](/desktop/currentsetup.png)
![Horizon](/desktop/currentsetup2.png)
Im using
	Arch Linux

# Depencies
+ [bspwm-rounded-corners](https://github.com/j-james/bspwm-rounded-corners) 
+ [from AURbspwm-rounded-cornersbspwm-rounded-corners](https://aur.archlinux.org/packages/bspwm-rounded-corners/)
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
+ [flameshot](https://github.com/flameshot-org/flameshot)
+ [mpv-mpris](https://github.com/hoyon/mpv-mpris)
+ [sxiv](https://github.com/muennich/sxiv)
+ [cava-visualizer](https://github.com/karlstav/cava)
+ [neofetch](https://github.com/dylanaraps/neofetch)
+ [volnoti](https://github.com/davidbrazdil/volnoti)
I recommend using volnoti from AUR it is hard to build on other systems but it is possible
+ [Tock-clock](https://github.com/nwtnni/tock)
+ [setbg-from-lukesmith](https://github.com/LukeSmithxyz/voidrice/tree/master/.local/bin)

Guide to use wallpaper with SXIV changer thanks for Luke Smith for awesome setbg script
open image with sxiv, press ctrl + x then press w to setbg

FIREFOX Setup
from here
https://github.com/vinceliuice/WhiteSur-gtk-theme

Guide to setup fonts
Copy fonts from my repository to $HOME/.fonts/
and fc-cache --force to apply those fonts

Setting neofetch with image
make alias in zshrc or bashrc
alias neofetch="neofetch --kitty /path/to/your/image.jpg
