#!/bin/bash

zenity --title='Hibernation' --width=440 --question --text='Hibernate Now?' --ok-label='Hibernate' --cancel-label='Cancel'
answer=$?

if [ $answer -eq 0 ]; then
	dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.Hibernate" boolean:true
fi
