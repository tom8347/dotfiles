if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

if [ -s ~/.Xresources ]; then
    xrdb ~/.Xresources
fi


~/.dotfiles/.screenlayout/fixscreens.sh
dbus-launch --exit-with-session bspwm
