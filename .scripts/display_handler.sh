#!/bin/sh

echo "$SRANDRD_ACTION" > /home/chriskw/HERE
case "$SRANDRD_ACTION" in
  "HDMI-1 disconnected") xrandr --output HDMI-1 --off;;
  "HDMI-1 connected") xrandr --output HDMI-1 --auto;;
esac
