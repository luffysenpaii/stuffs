#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

$HOME/.config/polybar/launch.sh &
feh --randomize --bg-fill ~/Pictures/wallpapers/*
xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkdrc &
numlockx on &
picom --config $HOME/.config/picom/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
ksuperkey -d &
dunst &
#exec /home/luffy/.config/bspwm/scripts/picom-toggle.sh &
nm-applet &
greenclip daemon &
kdeconnect-indicator &
kdeconnect-settings &
mpd &
