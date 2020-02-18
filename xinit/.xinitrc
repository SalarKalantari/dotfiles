#!/bin/sh


userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/Xresources
sysmodmap=/etc/X11/xinit/Xmodmap


# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
setxkbmap -option caps:swapescape

# Top of $HOME/.xinitrc file is a good place for this.
# This reassigns MS NEK4000 right Menu key to simulate DWM Mod4Key as well.
xmodmap -e "keycode 135 = Super_L" # reassign MS Menu Keypress to Super_L
xmodmap -e "remove mod1 = Super_L" # make sure X keeps it out of the mod1 group

if [ -n "`/etc/X11/chooser.sh`" ]; then
 command="`/etc/X11/chooser.sh`"
else
 failsafe="yes"
fi

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?* ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

if [ -n "$failsafe" ]; then
# twm &
# xclock -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
# exec xterm -geometry 80x66+0+0 -name login
exec slstatus 2>&1 >/dev/null &
# exec /home/salar/dwm-bar/dwm_bar.sh 2>&1 >/dev/null &
# exec /home/salar/dwmblocks/dwmblocks 2>&1 >/dev/null &
exec dwm
else
 exec $command
fi
