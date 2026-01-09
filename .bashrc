# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

# export TERMINAL=/usr/bin/alacritty
export TERMINAL=/usr/bin/kitty

# avoid 'xterm-kitty': unknown terminal type in ssh 
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

source ~/.aliases
source ~/.functions


# Use fish in place of bash
# keep this line at the bottom of ~/.bashrc
# fish isn't great as the login shell thats why its setup like this
# For Nixbased use this:
# [ -x /bin/fish ] && [ -z "$IN_NIX_SHELL" ] && SHELL=/bin/fish exec fish
# Otherwise use this:
# [ -x /bin/fish ] && SHELL=/bin/fish exec fish
