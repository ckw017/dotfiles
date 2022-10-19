# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load aliases
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

if [ -f ~/dotfiles/.bash_aliases ]; then
. ~/dotfiles/.bash_aliases
fi

if [ -f ~/.bash_privatealiases ]; then
. ~/.bash_privatealiases
fi

# Load z.sh
~/dotfiles/z/z.sh

# Manopt func
manopt() {
  local cmd=$1 opt=$2
  [[ $opt == -* ]] || { (( ${#opt} == 1 )) && opt="-$opt" || opt="--$opt"; }
  man "$cmd" | col -b | awk -v opt="$opt" -v RS= '$0 ~ "(^|,)[[:blank:]]+" opt "([[:punct:][:space:]]|$)"'
}

# Change into directory without cd
shopt -s autocd

bind '"Oc": forward-word'
bind '"Od": backward-word'
bind '"": forward-word'
bind '"": backward-word'
bind '"\t":menu-complete'
export TERM=xterm-256color
export PS1="\[\033[38;5;80m\]λ\[$(tput sgr0)\][\[$(tput sgr0)\]\[\033[38;5;98m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;6m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \W] \[$(tput sgr0)\]"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/chriskw/.miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/chriskw/.miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/chriskw/.miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/chriskw/.miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
