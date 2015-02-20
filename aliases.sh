#!/bin/bash

# Collection of utlity aliases for bash.

function mkcd_f() { mkdir -p "$@" && cd "$@"; }

function iam_f () { echo -ne "\033]0;$1\007"; }

function pretty () {
	if [ -n "$1" ]; then
		XMLLINT_INDENT="    " xmllint --format "$1" > "$1.fmt" && mv "$1.fmt" "$1" ;
	fi
}

alias ls='ls -lah --color=auto'
alias grep='grep --color=auto'
alias mkcd='mkcd_f'
alias iam='iam_f'
alias ..='cd ..'
alias ...='..;..'
alias ....='..;..;..'
alias redshift='redshift -m randr:screen=0'

# single screen, mute sound...
alias goto-meeting='disper -s && amixer set Master mute'
