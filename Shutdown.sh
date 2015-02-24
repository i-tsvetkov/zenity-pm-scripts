#!/bin/bash

zenity --title='Shutdown' --width=440 --question --text='Shutdown Now?' --ok-label='Shutdown' --cancel-label='Cancel'
answer=$?

if [ $answer -eq 0 ]; then
	dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.PowerOff" boolean:true
fi
