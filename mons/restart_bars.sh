#!/bin/sh
case ${MONS_NUMBER} in
	2)
		mons -e right
		;;
esac
	
killall polybar
polybar top -c ~/dotfiles/polybar/0.polybar &
disown
polybar top -c ~/dotfiles/polybar/1.polybar &
disown
