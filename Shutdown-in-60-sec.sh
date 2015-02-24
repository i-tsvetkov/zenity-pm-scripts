#!/bin/bash

timeout=60
sec=$timeout

while [ $sec -ge 0 ]
do
	echo $(expr \( \( $timeout - $sec \) \* 100 / $timeout \) )
	echo "#This system will be automatically shut down in $sec seconds."
	let sec--
	sleep 1
done | zenity --title='Shutdown' --width=440 --progress --auto-close --auto-kill --text="This system will be automatically shut down in $timeout seconds."

if [ $? -eq 0 ]; then
	dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1 "org.freedesktop.login1.Manager.PowerOff" boolean:true
fi
