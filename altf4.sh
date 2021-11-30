#!/bin/bash

if [ "$1" = "on" ] ; then
    echo setting Alt+F4 combination ON
    dconf write /org/gnome/desktop/wm/keybindings/close \[\'\<Alt\>F4\'\]
    exit
fi

if [ "$1" = "off" ] ; then
    echo setting Alt+F4 combination OFF
    dconf write /org/gnome/desktop/wm/keybindings/close \[\'\'\]
    exit
fi

if [ "$1" = "install" ] ; then
    echo copying script to /usr/bin
    sudo cp $0 /usr/bin/altf4
    exit
fi

if [ "$1" = "remove" ] ; then
    echo removing script from /usr/bin
    sudo rm /usr/bin/altf4
    exit
fi

echo
echo "altf4 on        enable the Alt+F4 combination in Gnome"
echo "altf4 off       disable the Alt+F4 combination in Gnome"
echo "altf4 install   copy this shell script to /usr/bin"
echo "altf4 remove    remove this shell script from /usr/bin"

exit
