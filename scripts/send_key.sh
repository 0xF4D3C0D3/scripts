#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "[!] usage: $0 WINDOW_ID KEYS"
    exit
fi

prev_window=`xdotool getactivewindow`

xdotool windowactivate $1 key --clearmodifiers $2 windowactivate $prev_window
