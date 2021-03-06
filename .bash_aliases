alias capsescape='setxkbmap -option caps:escape'
alias vibashaliases='vim ~/.bash_aliases'
alias grepaliases='cat ~/.bash_aliases ~/.bash_privatealiases | grep'
alias cddrives='/run/media/chris'
alias docker='sudo docker'
alias ripgrep='rg'
alias vinotes='vim ~/.notes'
alias grepnotes='cat ~/.notes | grep'
alias grepbashrc='cat ~/.bashrc | grep'
alias setclip='xclip -selection c'
alias getclip='xclip -selection c -o'
alias pubip='dig +short myip.opendns.com @resolver1.opendns.com'
alias sln='ln --symbolic'
alias tmuxd='tmux detach'
alias xclip='xclip -selection c'
alias makehome='~/.scripts/make_home.sh'
alias LS='sl'
alias pingg='ping google.com'
alias tmuxa='tmux attach'
alias iftop='sudo iftop -i wlp2s0'
alias musicplayer='ncmpcpp'
alias hive='bash ~/.scripts/hivelogin.sh'
alias audio='pavucontrol'
alias root='cd /'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias supac='sudo pacman -S'
alias pacinfo='pacman -Qi'
alias ls='ls -F --color=auto --group-directories-first'
alias ll='ls -la -F --color=auto --group-directories-first'
alias la='ls -a -F --color=auto --group-directories-first'
alias l.='ls -d .* -F --color=auto --group-directories-first'
alias mkdir='mkdir -pv'
alias vibashrc='vim ~/.bashrc'
alias vi3config='vim ~/.config/i3/config'
alias sysupdate='sudo pacman -Syu'
alias bashrc='source ~/.bashrc'
alias download='wget -P ~/Downloads'
alias quit='exit'
alias setbg='feh --bg-scale'
alias resetwal='wal -a 70 -i $(find ~/Pictures/wallpapers/ | shuf -n 1)'
alias setwal='sudo wal -i'
alias jekyllrun='~/.gem/ruby/2.6.0/bin/bundle exec jekyll serve'
alias wifi-menu='sudo wifi-menu'
alias rm='rm -i'
alias ytmp3='youtube-dl --extract-audio --audio-format mp3'
alias hdmi='xrandr --output HDMI-1 --auto'
alias hdmi-off='xrandr --output HDMI-1 --off'
alias py35='source activate py35'
