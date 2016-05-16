#!/bin/sh

# Detect what we were called as, e.g. view, vim, vimdiff
me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
vim="/usr/bin/$me"

if [ $UID -eq 0 ] ; then
	opts=''
	if [ -r "$HOME/.vimrc" ] ; then
		vimrc="$HOME/.vimrc"
		export MYVIMRC="$vimrc"
		opts=( -u "$vimrc" )
	fi
	"$vim" "${opts[@]}" "$@"
else
	"$vim" "$@"
fi
