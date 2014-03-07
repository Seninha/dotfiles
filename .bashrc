#! /bin/bash
#
# ~/.bashrc 

# README:
# ==============================================================================
#
# This .bashrc requires that two other bash scripts must be located in your home
# directory. These files are:
#
#   · ".bash_alias" - This file contains command alias.
#   · ".bash_prompt" - This file generates the prompt.
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# 1. Shell Options
# ==============================================================================

# CD command and Pathname Expansion

shopt -s autocd		# Cd if command is a directory
shopt -s cdable_vars	# Accept varname as cd argument
shopt -s cdspell	# Automatically corrects small errors in dir name
shopt -s direxpand	# Expand dir names
shopt -s dotglob	# Include dotfiles in pathname expansion
shopt -s extglob	# Extended pathname expansion
shopt -s globstar	# The pattern ** matches zero or more directories
shopt -s nocaseglob	# Case-insensitive pathname expansion.

# History

shopt -s cmdhist	# Salve multiple-line commands in the same history entry
shopt -s lithist	# Separe multiple-linhas entry by newline, instead of semicollon
shopt -s histappend	# Históry is appended to the histfile rather than overwriting it
shopt -s histverify	# History Substitution is loaded in prompt allowing further modifications

# MISC

shopt -s checkjobs	# A second attempt to exit shell finishes jobs
shopt -s checkwinsize	# Checks the window size after each comman
shopt -s xpg_echo	# The echo command uses -e option by default


# 2. Tmux
# ==============================================================================

if which tmux 2>&1 >/dev/null; then
	# if no session is started, start a new session
	test -z ${TMUX} && tmux && exit
	
	# # when quitting tmux, try to attach
	while test -z ${TMUX}; do
		tmux attach || break
	done
fi


# 3. Prompt
# ==============================================================================

[[ -f ~/.bash_prompt ]] && . ~/.bash_prompt

# Example:
#
# ┌─[10:30]──[lucas@B1] ~/current/dir [23 arquivos]
# └─> 1$


# 4. Environment Variables
# ==============================================================================

export PATH="~/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/java/bin/:./"
export LD_LIBRARY_PATH=./bin/:~/.local/share/Steam/SteamApps/common/GarrysMod/garrysmod/bin/:/opt/java/jre/lib/i386/

export PAGER="most -s"
export EDITOR="/usr/bin/vim"
export WWW_HOME="seninha.net"

export WINEDEBUG='fixme-all'
export GCC_COLORS


# 5. Alias and Functions
# ==============================================================================

[[ -f ~/.bash_alias ]] && . ~/.bash_alias


# 6. Programs Run at Login Time
# ==============================================================================

#
# The folowing commands may be a alias generated in the previous section!
#

# Show daily routine
view ~/.config/elos/20*/10*
clear

# Funções ZZ (www.funcoeszz.net)
export ZZOFF=""  # desligue funcoes indesejadas
export ZZPATH="/usr/bin/funcoeszz"  # script
source "$ZZPATH"

# Show a random awesome frase
fortune 90% brasil 5% linux 5% linuxcookie | cowsay -f tux


