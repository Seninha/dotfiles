#!/usr/bin/zsh
#
# ZSH Environment Variables
# ==============================================================================
#
# This file contains setting of ZSH's environment variables.
#

# PATHs
path=(~/bin ~/.local/bin)	# Personal bin dir
path+=(/usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games)
path+=/opt/java/bin		# Java bin dir
path+=./				# You can execute a command in current dir without prefixing "./"

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:~/bin:~/.local/lib"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:~/.local/share/Steam/SteamApps/common/GarrysMod/garrysmod/bin/" # Garry's Mod support
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/java/jre/lib/i386/"

fpath=(/usr/share/zsh/site-functions $fpath)

# History
export HISTFILE=~/.zsh_history			# You must set the histfile...
export HISTSIZE=1000000				# Infinite lines in history
export SAVEHIST=1000000			# Infinite history file size

# Paging and Editing
export PAGER="vimpager"
export EDITOR="/usr/bin/vim"
export VISUAL="/usr/bin/vim"
NULLCMD=vimcat
READNULLCMD=$PAGER

# DEV
export WINEDEBUG='fixme-all'
export GCC_COLORS

# Personal Variables
export WWW_HOME="http://seninha.net"
