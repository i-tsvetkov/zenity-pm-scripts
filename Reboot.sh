#!/bin/bash

zenity --title='Reboot' --width=440 --question --text='Reboot Now?' --ok-label='Reboot' --cancel-label='Cancel'
answer=$?

if [ $answer -eq 0 ]; then
	dbus-send --system --print-reply --dest="org.freedesktop.ConsoleKit" /org/freedesktop/ConsoleKit/Manager org.freedesktop.ConsoleKit.Manager.Restart
fi
