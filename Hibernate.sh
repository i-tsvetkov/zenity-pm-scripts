#!/bin/bash

zenity --title='Hibernation' --width=440 --question --text='Hibernate Now?' --ok-label='Hibernate' --cancel-label='Cancel'
answer=$?

if [ $answer -eq 0 ]; then
	dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Hibernate
fi
