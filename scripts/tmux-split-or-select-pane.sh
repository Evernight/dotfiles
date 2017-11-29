#!/bin/sh

## From: https://gist.github.com/knmkr/4441196
##
## Split-window if there is only one pane, else select-pane.
##
## Set key-binding to run this script, in .tmux.conf, like,
## bind -n C-t run "/path/to/tmux-split-or-select-pane.sh"

# check if more than one pane exists
tmux list-panes > /tmp/tmux.list-panes
awk '{if ($1!="0:") {exit 1}}' /tmp/tmux.list-panes
status=$?

# if exists -> select, else -> split
if [ ${status} == 1 ]; then
    tmux select-pane -R
else
    tmux split-window -h
fi
