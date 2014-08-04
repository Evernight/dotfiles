export TERM=screen-256color

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

if [[ $- =~ "i" ]]; then
    source ~/.aliases
    source ~/.exports
    source ~/.prompt
fi
if [ -f ~/.specific_bashrc ]; then
    . ~/.specific_bashrc
fi

#if [ `which tmux 2> /dev/null` -a -z "$TMUX" ]; then
#    tmux -2 attach || tmux -2 new; exit
#fi

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

# disable Ctrl-S Ctrl-Q in terminal
#stty -ixon
