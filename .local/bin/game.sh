#!/bin/sh
#notify-send "compositor gamemode " -t 2000
another_instance()
{
        echo "There is another instance running, exiting"
        exit 1
        }
    if [ "$(pgrep game.sh)" != $$ ]; then
             another_instance
fi
sleep 5

while [ -n "$(pgrep overlay)" ] ||  [ -n "$(pgrep SC2)" ] ; do
    if  [ -n  "$(pgrep picom)" ]; then
killall picom
    fi
sleep 5
done
picom &> /dev/null 2>&1
#exec picom -b --experimental-backends --dbus --config $HOME/.config/awesome/configuration/picom.conf &> /dev/null 2>&1
exit
