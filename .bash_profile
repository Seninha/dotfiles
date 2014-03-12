#!/bin/bash
#
# /.bash_profile
#

# 1. Shell's Term
# ==============================================================================

#fbterm-bi ~/Imagens/bb1.png && logout


# 2. Terminal Colors
# ==============================================================================

resetc () {
	reset
	echo -en "\e]P0222222" #black
	echo -en "\e]P8222222" #darkgrey
	echo -en "\e]P1803232" #darkred
	echo -en "\e]P9982b2b" #red
	echo -en "\e]P25b762f" #darkgreen
	echo -en "\e]PA89b83f" #green
	echo -en "\e]P3aa9943" #brown
	echo -en "\e]PBefef60" #yellow
	echo -en "\e]P4324c80" #darkblue
	echo -en "\e]PC2b4f98" #blue
	echo -en "\e]P5706c9a" #darkmagenta
	echo -en "\e]PD826ab1" #magenta
	echo -en "\e]P692b19e" #darkcyan
	echo -en "\e]PEa1cdcd" #cyan
	echo -en "\e]P7ffffff" #lightgrey
	echo -en "\e]PFdedede" #white
	clear #for background artifacting
}

resetc


# 3. Clock
# ==============================================================================

# theclock () {
# while test -e $lock; do
# 	tput sc
# 	tput cup 0 $[`tput cols`-12]
# 	echo -e "\e[1;47;34m[ $(date +'%H:%M:%S') ]\e[0m"
# 	tput rc
# 	sleep 1;
# done
# }
# 
# ( theclock & )


# 4. Twitter
# ==============================================================================

# twitter () {
# 	ttytter -daemon -silent -dmpause=0
# 	sleep 4 && clear
# }
# 
# echo -n '.'
# read -N 1 -t 2 -s -r ACEITA ; clear				# Define se vai para o prompt lendo ou não lendo os twitts
# ## Comandos do byobu
# 	if [[ "${ACEITA}x" = "x" ]] ; then
# 	twitter 
# 	fi
# fi
# unset ACEITA


# 5. Run .bashrc
# ==============================================================================

[[ -f ~/.bashrc ]] && . ~/.bashrc
