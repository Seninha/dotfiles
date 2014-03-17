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
# This section loads  recursively all files stored  in the directory  defined by
# the variable $_ZSHDIR that DOES NOT start with a dot or "README" nor end with:
#     - ~
#     - .bak
#     - .md
#     - .sample
#
# Here's a overview of files stored in $_ZSHDIR
#
# 10.options      Set and unset zsh options
# 11.modules      Load zsh modules
# 20.envvars      Set environment variables
# 30.aliases      Set aliases and functions
# 90.bindkeys     Set keyboard bindkeys
# 99.prompt       Define a custom prompt
#
# You can change the  number suffix of files, because these files don't depends
# on each other. But don't do it because they're numbered in a logic fashion...

_ZSHDIR=".zsh.d"
_sourceDir=$(cd $(dirname $(echo $0 | cut -d' ' -f 1) 2>/dev/null) && pwd)
[[ -d $_sourceDir ]] || _sourceDir=$HOME
_sourceDir=$(echo ${_sourceDir}/${_ZSHDIR}/** | tr ' ' '\n' | grep -v -i \
	-e '.sample$' \
	-e '.bak$' \
	-e '.md$' \
	-e '~$' \
	-e '^\.' \
	-e '^README' \
	)

for _sourceFile in ${(f)_sourceDir}; do
	source $_sourceFile
done

unset _sourceDir _sourceFile _ZSHDIR


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
