#!/usr/bin/env sh

power_off="Power off"
reboot="Reboot"
lock="Lock"
suspend="Suspend"
log_out="Log out"

chosen=$(printf '%s;%s;%s;%s;%s\n' "$power_off" "$reboot" "$lock" "$suspend" \
                                   "$log_out" \
    | rofi -theme 'powermenu/powermenu-light.rasi' \
           -dmenu \
           -sep ';' \
           -selected-row 0)

case "$chosen" in
    "$power_off")
        systemctl poweroff -i
        ;;

    "$reboot")
        systemctl reboot
        ;;

    "$lock")
        ~/.config/i3/lockscript
        ;;

    "$suspend")
        systemctl suspend
        ;;

    "$log_out")
        i3-msg exit
        ;;

    *) exit 1 ;;
esac
