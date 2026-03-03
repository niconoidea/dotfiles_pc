#!/bin/bash

echo "POWER"

CHOICES="Lock\nLogout\nSleep\nReboot\nShutdown"

CHOICE=$(echo -e "$CHOICES" | wofi --dmenu -s /home/nico/.config/wofi/style_dropdown.css -c ~/.config/wofi/config_dropdown)

case "$CHOICE" in
    Lock) swaylock ;;
    Logout) swaymsg exit ;;
    Sleep) systemctl sleep;;
    Reboot) systemctl reboot ;;
    Shutdown) systemctl poweroff ;;
esac
