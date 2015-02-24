#!/bin/bash

zenity --title='Suspend' --width=440 --question --text='Suspend Now?' --ok-label='Suspend' --cancel-label='Cancel'
answer=$?

if [ $answer -eq 0 ]; then
	dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.Suspend" boolean:true
fi
