#! /bin/bash
#
# ~/.bashrc 
# ==============================================================================
#
# WARNING!
# --------
#
# This .bashrc is  highly vim-oriented and myself-oriented,  so if you don't use
# vim and if you aren't me, you must edit this file
#
#
# Required Files
# --------------
#
# The following files must be located in the same dir as .bashrc:
#
#   * .bash_alias  - This file contains command alias.
#   * .bash_prompt - This file generates the prompt.
#

## If not running interactively, don't do anything
[[ $- != *i* ]] && return


# 1. Shell Options
# ==============================================================================

## CD command and Pathname Expansion
shopt -s autocd		# Cd if command is a directory
shopt -s cdable_vars	# Accept varname as cd argument
shopt -s cdspell	# Automatically corrects small errors in dir name
shopt -s direxpand	# Expand dir names
shopt -s dotglob	# Include dotfiles in pathname expansion
shopt -s extglob	# Extended pathname expansion
shopt -s globstar	# The pattern ** matches zero or more directories
shopt -s nocaseglob	# Case-insensitive pathname expansion.

## History
shopt -s cmdhist	# Salve multiple-line commands in the same history entry
shopt -s lithist	# Separe multiple-linhas entry by newline, instead of semicollon
shopt -s histappend	# Históry is appended to the histfile rather than overwriting it
shopt -s histverify	# History Substitution is loaded in prompt allowing further modifications

## MISC
shopt -s checkjobs	# A second attempt to exit shell finishes jobs
shopt -s checkwinsize	# Checks the window size after each comman
shopt -s xpg_echo	# The echo command uses -e option by default


# 2. Prompt
# ==============================================================================

[[ -f ./.bash_prompt ]] && . ./.bash_prompt

## Example:
#
# ┌─[10:30]──[lucas@B1] ~/current/dir [23 arquivos]
# └─> 1$


# 3. Environment Variables
# ==============================================================================

## PATHs
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
export PATH="$PATH:~/bin:~/.local/bin"		# Personal bin dir
export PATH="$PATH:/opt/java/bin"		# Java bin dir
export PATH="$PATH:./"				# You can execute a command in current dir without prefixing "./"

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:~/bin:~/.local/lib"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:~/.local/share/Steam/SteamApps/common/GarrysMod/garrysmod/bin/" # Garry's Mod support
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/java/jre/lib/i386/"

## History
export HISTSIZE=				# Infinite lines in history
export HISTFILESIZE=				# Infinite history file size
export HISTTIMEFORMAT=				# Write timestamps

## Paging and Editing
export PAGER="vimpager"
export EDITOR="/usr/bin/vim"

## DEV
export WINEDEBUG='fixme-all'
export GCC_COLORS

## Personal Variables
export WWW_HOME="http://seninha.net"


# 4. Alias and Functions
# ==============================================================================

[[ -f ./.bash_alias ]] && . ./.bash_alias


# 5. Programs Run at Login Time
# ==============================================================================
#
# ¡The following commands may require a package to be installed!
# ¡The following commands may be meaningless in a computer other than mine!
#

## Start tmux (requires tmux)
if which tmux 2>&1 >/dev/null; then
	# if no session is started, start a new session
	test -z ${TMUX} && tmux && exit
	
	# # when quitting tmux, try to attach
	while test -z ${TMUX}; do
		tmux attach || break
	done
fi

## Show daily routine
view ~/.config/elos/20*/10*
clear

## Funções ZZ (www.funcoeszz.net)
export ZZOFF=""  # desligue funcoes indesejadas
export ZZPATH="/usr/bin/funcoeszz"  # script
source "$ZZPATH"

## Show a random awesome frase
fortune 90% brasil 5% linux 5% linuxcookie | cowsay -f tux


