# autoshutdown
Autoshutdown for Linux/X11 with notification and cancel functionality.

## Dependencies
- notify-send / libnotify-bin
- pgrep / procps

## Setup
- chmod +x autoshutdown.sh
- Adjust DISPLAY variable as needed.
- Add a cron job to start the shutdown at a planned time. Users will see a notification dialog and can cancel the shutdown by closing the notification.
