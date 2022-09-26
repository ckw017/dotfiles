#!/bin/bash

i3-msg 'workspace 1; append_layout ~/.config/i3/workspace-0.json'
urxvt -name 'htop' -e bash -c 'htop -t;bash' &
urxvt -name 'neofetch' -letsp -1 -e bash -c 'neofetch | lolcat --seed 25;bash' &
urxvt -name 'cowsay' -letsp -1 -e bash -c 'fortune | cowsay -f cat -y;bash' &
urxvt -name 'ncmpcpp' -e bash -c 'mpd;ncmpcpp;bash' &

setxkbmap -option caps:escape

# wal -b 000000 -i ~/Pictures/wallpapers/rainy.jpg
wal -b 000000 -i $(find ~/Pictures/wallpapers/ | shuf -n 1)
compton -f -D 7 --config ~/.config/compton/compton.config &
