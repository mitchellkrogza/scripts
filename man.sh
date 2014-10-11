#!/bin/bash

if [ -t 1 ] ; then
	export MANPAGER="/bin/sh -c \"unset MANPAGER; col -b -x | \
        vim -R -c 'set ft=man fdm=indent fdn=1 fen nomod noma nolist nonu' \
		-c 'nmap q :q<CR>' -c 'nmap <SPACE> <C-D>' -c 'nmap b <C-U>' \
        -c 'nmap <UP> <UP>' -c 'nmap <DOWN> <DOWN>' -c 'nmap <LEFT> <LEFT>' \
        -c 'nmap <RIGHT> <RIGHT>' -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""
else
	export MANPAGER='less -s'
fi

man $1 $2
