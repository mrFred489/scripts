#!/bin/bash

PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

DIR="/home/frederik/Pictures/desktopRotation"
PIC=$DIR"/"$(ls $DIR/ | shuf -n1)
#echo "file://"$PIC
gsettings set org.gnome.desktop.background picture-uri "file://"$PIC
#echo $answer
#echo "done"
