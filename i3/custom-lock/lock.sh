#!/bin/bash
lock=~/.config/i3/custom-lock/lock.png
scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
[[ -f $lock ]] && convert /tmp/screen.png $lock -gravity center -composite -matte /tmp/screen.png
#i3lock -u -i /tmp/screen.png
i3lock -n -i /tmp/screen.png \
     --ringcolor=ffffffff --line-uses-inside \
    --keyhlcolor=ff00ffff --separatorcolor=00000000 \
    --insidecolor=00000000 --insidevercolor=fecf4d00 --insidewrongcolor=d23c3d00 \
    --indpos="x+86:y+1003" \
    --radius=64 --veriftext="" --wrongtext="" &
systemctl suspend && ~/.scripts/initrc
rm /tmp/screen.png
