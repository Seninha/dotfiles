#
# ~/.bash_profile
#

## SHELL DO TERMINAL (descomentar apenas um)
#fbterm-bi ~/Imagens/bb1.png && logout


## Cores do terminal
######################

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


## Mensagens de auto ajuda, hihi!
###################################

# echo -e 'Querido Lucas, seu BBK do KRL, preste atenção: \n\n\n'
# 
# read -n1 && echo 'Ao ligar esse computador espero que não passe HORAS sem fazer PORRA NENHUMA.
# Então nem pense em escrever a palavra "startx" nesse terminal.'
# 
# read -n1 && clear && echo 'Estou de olho em você, se abrir o facebook ou o youtube durante essa sessão, tenha certeza
# de que o Bixo-Papão irá mijar em cima da sua cama hoje de noite.'
# 
# read -n1 && echo 'Não se preocupe, porque você poderá ver os inúteis vídeos de gameplays do "Coisa de JooJ",
# "Caloi" e "HUEsEDU" num único final de semana ;-)'
# 
# read -n1 && echo 'Porque aliás, com certeza o youtube não sairá do ar. ¬ ¬'
# 
# read -n1 && echo 'Já vídeos de "TTrula", "Clariun" e "EuAuE" também não vão sair de lá tão cedo, e também
# eles têm quase 20 minutos de duração e precisam de perder tempo para entender e tudo mais,'
# read -n1 && echo 'e, na moralzinha, não acredito você vai perder seu TEMPO vendo ESSAS PORRA.'
# 
# read -n1 && echo 'KRL'
# 
# read -n1 && clear && echo 'E nem preciso falar de YTPBR, né? Se eu ver você assistindo um POOP sequer, ou qualquer
# episódio de "Harvey, o advogado" EU JURO QUE EU TE MATO, SEU GORDO FEDORENTO!'
# 
# read -n1 && clear && echo 'E ai de você se eu te ver lendo a wikipedia sobre Tilacinos, Moas, Australosfenídeos ou
# essas porras aí'
# 
# read -n1 && echo 'QUEM CARALHOS está interessado na origem dos mamíferos ou das aves?'
# 
# read -n1 && echo 'Ninguém se importa com esses tais de Cinodontes, Terópodes ou animais estranhos'
# 
# read -n1 && echo 'Você deveria fazer o mesmo... Só para varia ;-)'
# 
# read -n1 && clear && echo 'Agora vá fazer xixi, lavar as mãos, guarde a porra desse cubo mágico e pegue aquele maldito caderno!'
# 
# read -n1 && clear && echo 'Decepcionado,
# G-zuis'
# 
# read -n1 && clear


## Relógio do terminal
########################

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


## Twitter
############

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


## Carregar byobu
###################

# if [[ "$(tty)" != "/dev/tty6" ]] ; then
# _byobu_sourced=1 . /usr/bin/byobu-launch
# fi

## Carregar .bashrc
#####################

[[ -f ~/.bashrc ]] && . ~/.bashrc
