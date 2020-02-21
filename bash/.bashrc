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
export NNN_USE_EDITOR=1

# configure PS1 command prompt
PS1='\e[0;36m\]\w \e[0;32m\]\$ \e[0m\]'

# no double entries in the shell history
export HISTCONTROL="$HISTCONTROL erasedups:ignoreboth"

# wrap these commands for interactive use to avoid accidental overwrites.
rm() { command rm -i "$@";  }
cp() { command cp -i "$@";  }
mv() { command mv -i "$@";  }

# alias
alias ll='ls -al'
