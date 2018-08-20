#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

bind '"Oc": forward-word'
bind '"Od": backward-word'

alias audio='pavucontrol'
alias root='cd /'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias supac='sudo pacman -S'
alias ls='ls -F --color=auto'
alias ll='ls -la'
alias la='ls -a'
alias l.='ls -d .* --color-auto'
alias mkdir='mkdir -pv'
alias ~='cd ~'
alias vibashrc='vim ~/.bashrc'
alias vi3config='vim ~/.config/i3/config'
alias sysupdate='sudo pacman -Syu'
alias bashrc='source ~/.bashrc'
alias download='wget -P ~/Downloads'
alias quit='exit'
alias setbg='feh --bg-scale'
alias resetwal='wal -a 70 -i ~/Pictures/wallpaper.jpg'
alias jekyllrun='/home/chris/.gem/ruby/2.5.0/bin/bundle exec jekyll serve'
alias wifi-menu='sudo wifi-menu'
PS1='[\u@\h \W]\$ '
alias rm='rm -i'
alias cdsite='cd ~/Github/ckw017.github.io'
alias home='cd ~'
