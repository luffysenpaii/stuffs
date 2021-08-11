#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

$HOME/.config/polybar/launch.sh & 
#exec ./.config/polybar/launch.sh &
#feh --bg-fill ~/Downloads/w.jpg &
feh --randomize --bg-fill ~/Pictures/wallpapers/*
#feh --randomize --bg-fill ~/Dropbox/Apps/Desktoppr/*
xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
numlockx on &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
exec flameshot &
ksuperkey -d &
dunst &
mpd &
thunar --daemon &
exec ~/.config/bspwm/scripts/picom-toggle.sh &
#nitrogen --restore &
