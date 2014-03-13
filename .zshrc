#! /bin/zsh
#
# ~/.zshrc 
# ==============================================================================
#
# This .zshrc is  highly vim-oriented and myself-oriented,  so if you don't use
# vim and if you aren't me, you must edit this file
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Required Files
# ==============================================================================
#
# Zsh is awesome,  you can do anything on it!  But comparing it  to other shells
# like Bash, most of Zsh features aren't enabled by default.
#
# For example, the history storing isn't  setted by default! Because of that fact
# the .zshrc becomes MUCH longer. So I decide to split it into several files.
#
#
# Here's a overview of files stored in ~/.zsh/
#
# 10.options      Set and unset zsh options
# 11.modules      Load zsh modules
# 20.envvars      Set environment variables
# 30.aliases      Set aliases and functions
# 90.bindkeys     Set keyboard bindkeys
# 99.prompt       Define a custom prompt
#
# You can change the  number suffix of files,  becaus these files don't depends
# on each other. But don't do it because they're numbered in a logic fashion...


## Source each file in ~/.zsh/ in alphanumeric order
for config_file in $(/usr/bin/ls ~/.zsh | sort); do
	. ~/.zsh/$config_file
done



# Autoloads
# ==============================================================================
autoload -U compinit
compinit
zmodload zsh/complist	# Initiate Complist


# Programs Run at Login Time
# ==============================================================================
#
# ¡The following commands may require a package to be installed!
# ¡The following commands may be meaningless in a computer other than mine!
#

# Start tmux (requires tmux)
if which tmux 2>&1 >/dev/null; then
	# if no session is started, start a new session
	test -z ${TMUX} && tmux && exit
	
	# # when quitting tmux, try to attach
	while test -z ${TMUX}; do
		tmux attach || break
	done
fi

# Show daily routine
view ~/.config/elos/20*/10*
clear

# Funções ZZ (www.funcoeszz.net)
export ZZOFF=""  # desligue funcoes indesejadas
export ZZPATH="/usr/bin/funcoeszz"  # script
source "$ZZPATH"

# Show a random awesome frase
fortune 90% brasil 5% linux 5% linuxcookie | cowsay -f tux

