#!/usr/bin/zsh
#
# ZSH completion
# ==============================================================================
#
# This file configure the ZSH's completion system.
#

# Options
# ==============================================================================
#
# This options may be setted in another file

unsetopt menuComplete		# Do not autoselect the first completion entry
unsetopt flowControl		# Enable output flow controw
setopt autoMenu			# Show completion menu on succesive tab press
setopt completeInWord		# Don't go to the end of the word if completion is started
setopt alwaysToEnd		# Moves the cursor to the end of the completion


# Variable setting
# ==============================================================================

WORDCHARS=''


# Complist module loading
# ==============================================================================
#
# This module may be loaded and configured in another file.  So it will check if
# the module is already loaded.

if zmodload -e zsh/complist ; then
else

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

fi


# Compinit loading and configuration
# ==============================================================================
#
# The zstyle command is explained in the manpage zshmodules(1) at "THE ZSH/ZUTIL
# MODULE" section. The <pattern> syntax is explained in zshcompsys(1).  Here's a
# quick help on a form of this command:
#
#     zstyle <pattern> <style> <strings>...
#
# Defines the given <style> for the <pattern> with the <strings> as the value.
#
#
# -------
#
# For completion, the <pattern> takes the following syntax:
#
#     :completion:<function>:<completer>:<command>:<argument>:<tag>
#
# So, it consists of a fixed set of fields separeted by colons. The first field,
# when used at completion, is the literal string "completion".
#
# The pattern may contain wildchars like '*'.
#
# The other fields are:
#
# - <function>: The name of the widtget rather than the normal completion system
#                 used for completion. It's typically blank.
#
# - <completer>: Name of the completer function currently active.
#
# - <command>: Name of the command where the completion is performed (e.g. grep)
#
# - <argument>: Indicates which argument we are completing
#
# - <tag>: The type of matches (e.g. files, jobs, directories)
#
# -------
#
# See zshcompsys(1) for a list of available styles and tags.


## Compinit loading
autoload -U compinit
compinit


## If there is only a single match, it will be displayed but not inserted
zstyle '*' single-ignored show


## Set Menu Selection on
zstyle ':completion:*:*:*:*:*' menu select


## Case-insensitive (all), partial-word and then substring completion
if [ "$CASE_SENSITIVE" = "true" ]; then
  zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
else
  zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
fi


## Color specifications for completion menu (same as for the GNU ls command)
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'


## Formatting and mesages
zstyle ':completion:*:*:*:*:*' verbose true				# Be verbose (show descriptions)
zstyle ':completion:*:descriptions'   format "%B%F{blue}>> %d:%b%f"
zstyle ':completion:*:messages'       format '%d'
zstyle ':completion:*:warnings'       format '%BNo matches for:$b %d'
zstyle ':completion:*:corrections'    format '%B%d (errors: %e)%b'


## External commands to generate list of completions
zstyle ':completion:*:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"


## Completion list ordering
zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories


## Use caching
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH/cache/

