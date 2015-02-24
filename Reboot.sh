#!/bin/bash

zenity --title='Reboot' --width=440 --question --text='Reboot Now?' --ok-label='Reboot' --cancel-label='Cancel'
answer=$?

if [ $answer -eq 0 ]; then
	dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.Reboot" boolean:true
fi
