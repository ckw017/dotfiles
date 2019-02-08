#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load aliases
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

if [ -f ~/.bash_privatealiases ]; then
. ~/.bash_privatealiases
fi

# Manopt func
manopt() {
  local cmd=$1 opt=$2
  [[ $opt == -* ]] || { (( ${#opt} == 1 )) && opt="-$opt" || opt="--$opt"; }
  man "$cmd" | col -b | awk -v opt="$opt" -v RS= '$0 ~ "(^|,)[[:blank:]]+" opt "([[:punct:][:space:]]|$)"'
}

# Powerline
# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . /usr/share/powerline/bindings/bash/powerline.sh

source /usr/bin/z.sh
# Change into directory without cd
shopt -s autocd

bind '"Oc": forward-word'
bind '"Od": backward-word'
bind '"": forward-word'
bind '"": backward-word'
bind '"\t":menu-complete'

# added by Anaconda3 installer
export ELECTRON_TRASH='gio atom'
export TERMINFO=/usr/lib/terminfo
export PS1="\[\033[38;5;80m\]λ\[$(tput sgr0)\][\[$(tput sgr0)\]\[\033[38;5;98m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;6m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \W] \[$(tput sgr0)\]"
COWPATH="$COWPATH:$HOME/.cowsay"
# added by Anaconda2 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/chriskw/.anaconda/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/chriskw/.anaconda/etc/profile.d/conda.sh" ]; then
        . "/home/chriskw/.anaconda/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/chriskw/.anaconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

export PATH="/home/chriskw/.gem/ruby/2.5.0/bin:$PATH"
export PDSH_RCMD_TYPE=ssh
