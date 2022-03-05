if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

if [ -s ~/.Xresources ]; then
    xrdb ~/.Xresources
fi


~/.screenlayout/fixscreens.sh
dbus-launch --exit-with-session bspwm
