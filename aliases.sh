#!/bin/bash

# Collection of utlity aliases for bash.

function mkcd_f() { mkdir -p "$@" && cd "$@"; }

alias ls='ls -lah --color=auto'
alias grep='grep --color=auto'
alias mkcd='mkcd_f'
alias ..='cd ..'
alias ...='..;..'
alias df='df -h'

# single screen, mute sound...
alias goto-meeting='disper -s && amixer set Master mute'
