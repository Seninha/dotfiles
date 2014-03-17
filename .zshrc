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

eval `dircolors .dir_colors`


# Plugins Loading
# ==============================================================================
#
# Loads recursively all files  in the directory defined by the variable $_ZSHDIR
# that DOES NOT start with a dot and that DOES end with .zsh
#
# Here's a overview of files stored in $_ZSHDIR
#
# options.zsh      Set and unset zsh options
# modules.zsh      Load zsh modules
# envvars.zsh      Set environment variables
# aliases.zsh      Set aliases and functions
# bindkeys.zsh     Set keyboard bindkeys
# prompt.zsh       Define a custom prompt

_ZSHDIR=".zsh.d"
_sourceDir=$(cd $(dirname $(echo $0 | cut -d' ' -f 1) 2>/dev/null) && pwd)
[[ -d $_sourceDir ]] || _sourceDir=$HOME
_sourceDir=$(echo ${_sourceDir}/${_ZSHDIR}/** | tr ' ' '\n' | grep -v -e '^\.' | grep -e '.zsh$')

for _sourceFile in ${(f)_sourceDir}; do
	source $_sourceFile
done

unset _sourceDir _sourceFile _ZSHDIR


# Antigen plugins management
# ==============================================================================

# antigen bundle zsh-users/zsh-syntax-highlighting

# antigen apply


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

# Show a random awesome frase
fortune 90% brasil 5% linux 5% linuxcookie | cowsay -f tux

# Instalacao das Funcoes ZZ (www.funcoeszz.net)
export ZZPATH=/usr/bin/funcoeszz
source /home/lucas/.zzzshrc
