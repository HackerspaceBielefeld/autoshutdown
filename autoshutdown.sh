#!/bin/bash

#System shutdown with $TIMER delay and possibility for user to cancel shutdown by closing the notification

export DISPLAY=:1
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u)/bus

# Shutdown delay
TIMER=180

# Show user notification
notify-send "Herunterfahren" "Das System wird in $TIMER Sekunden heruntergefahren. Klicke hier, um abzubrechen." --icon=dialog-warning

sleep $TIMER

# Check if notification process is stopped
if ! pgrep -f "notify-send" > /dev/null; then
	echo "Herunterfahren abgebrochen."
	exit 0
fi

shutdown now
