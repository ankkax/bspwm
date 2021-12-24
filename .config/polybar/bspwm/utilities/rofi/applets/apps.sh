#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

dir="$HOME/.config/bspwm/utilities/rofi/applets/"
rofi_command="rofi -theme $dir/six.rasi"

# Links
terminal=""
files=""
steam=""
browser=""
telegram=""
mumble=""

# Error msg
msg() {
	rofi -theme "$dir/message.rasi" -e "$1"
}

# Variable passed to rofi
options="$terminal\n$files\n$steam\n$browser\n$telegram\n$mumble"

chosen="$(echo -e "$options" | $rofi_command -p "Most Used" -dmenu -selected-row 0)"
case $chosen in
    $terminal)
		if [[ -f /usr/bin/termite ]]; then
			termite &
		elif [[ -f /usr/bin/urxvt ]]; then
			urxvt &
		elif [[ -f /usr/bin/kitty ]]; then
			kitty &
		elif [[ -f /usr/bin/xterm ]]; then
			xterm &
		elif [[ -f /usr/bin/xfce4-terminal ]]; then
			xfce4-terminal &
		elif [[ -f /usr/bin/gnome-terminal ]]; then
			gnome-terminal &
		else
			msg "No suitable terminal found!"
		fi
        ;;
    $files)
		if [[ -f /usr/bin/nautilus ]]; then
			nautilus &
		elif [[ -f /usr/bin/pcmanfm ]]; then
			pcmanfm &
		else
			msg "No suitable file manager found!"
		fi
        ;;
    $steam)
		if [[ -f /usr/bin/steam ]]; then
			steam &
		elif [[ -f /usr/bin/leafpad ]]; then
			leafpad &
		elif [[ -f /usr/bin/mousepad ]]; then
			mousepad &
		elif [[ -f /usr/bin/code ]]; then
			code &
		else
			msg "No suitable text steam found!"
		fi
        ;;
    $browser)
		if [[ -f /usr/bin/firefox ]]; then
			firefox &
		elif [[ -f /usr/bin/chromium ]]; then
			chromium &
		elif [[ -f /usr/bin/midori ]]; then
			midori &
		else
			msg "No suitable web browser found!"
		fi
        ;;
    $telegram)
		if [[ -f /usr/bin/telegram-desktop ]]; then
			telegram-desktop &
			discord &
		else
			msg "No  telegram found!"
		fi
        ;;
    $mumble)
		if [[ -f /usr/bin/mumble ]]; then
			mumble &
		else
			msg "No suitable mumble manager found!"
		fi
        ;;
esac

