#!/bin/sh
bin=/usr/bin
pe="$(which pinentry-rofi)"
case "$PINENTRY_USER_DATA" in
*USE_TTY*)  pe="$(which pinentry-tty)"  ;;
*USE_CURSES*)   pe="$(which pinentry-curses)" ;;
*USE_ROFI*)   pe="$(which pinentry-rofi)" ;;
esac
exec "${pe}" "$@"
