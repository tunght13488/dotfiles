if [ -s ~/.xmodmaprc ]; then
    xmodmap ~/.xmodmaprc
fi
xmodmap -e "clear lock" #disable caps lock switch
xmodmap -e "keysym Caps_Lock = Escape" #set caps_lock as escape
# xscreensaver -no-splash &
# export GTK_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# export QT_IM_MODULE=ibus
# ibus-daemon -drx

# exec awesome
