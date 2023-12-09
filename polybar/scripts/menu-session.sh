#! /bin/sh

chosen=$(printf " Apagar\n󰑓 Reiniciar\n󰀒 Cerrar" | rofi -theme ~/.config/polybar/scripts/rofi/launcher.rasi -dmenu -i)

case "$chosen" in
  " Apagar") systemctl poweroff ;;
  "󰑓 Reiniciar") systemctl reboot ;;
  "󰀒 Cerrar") bspc quit ;;
  *) exit 1 ;;
esac
