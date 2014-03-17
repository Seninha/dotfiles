#!/usr/bin/zsh
#
# Modules file
# ==============================================================================
#
# This file  loads zsh modules,  but doesn't do only it.  This file  also define
# bindkeys, set variables and execute commands offered by the module.
#

# COMPLIST: offers extensions to completion listings
# ==============================================================================
zmodload zsh/complist

MENUSELECT=1		# Use Menu completion

bindkey -M menuselect '[M'	accept-and-infer-next-history	# Keep completing
bindkey -M menuselect ''	accept-line		# Accept completion
bindkey -M menuselect ''	send-break		# Don't complete
bindkey -M menuselect ''	undo			# Undo completion
bindkey -M menuselect '[A'	up-history		# Go up
bindkey -M menuselect '[B'	down-history		# Go down
bindkey -M menuselect '[C'	forward-char		# Go right
bindkey -M menuselect '[D'	backward-char		# Go left
bindkey -M menuselect '[1~'	beginning-of-line	# Go to the beginning of line
bindkey -M menuselect '[4~'	end-of-line		# Go to the end of line
bindkey -M menuselect '[5~'	beginning-of-history	# Go to the first line
bindkey -M menuselect '[6~'	end-of-history		# Go to the last line
bindkey -M menuselect '	'	menu-complete		# Go to the next match
bindkey -M menuselect '[Z'	reverse-menu-complete	# Go to the previous match
bindkey -M menuselect '/'	history-incremental-search-forward	# Search in the list of completions
bindkey -M menuselect '?'	history-incremental-search-backward	# Search in the list of completions


# MATHFUNC: provides standard mathematical functions like sin()
# ==============================================================================
zmodload zsh/mathfunc


# zmodload -a colors
# zmodload -a autocomplete
# 
# 
# zmodload -a stat
# zmodload -a zpty
# zmodload -a zprof
# 
# autoload -U url-quote-magic
# zle -N self-insert url-quote-magic
