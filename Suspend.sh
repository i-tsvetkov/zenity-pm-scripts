#!/bin/bash

zenity --title='Suspend' --width=440 --question --text='Suspend Now?' --ok-label='Suspend' --cancel-label='Cancel'
answer=$?

if [ $answer -eq 0 ]; then
	dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend
fi
