#! /bin/bash
#
# ~/.bashrc 
# Last Change:  2014-01-25
# Maintainer:   Lucas de Sena <lucas.ta23@gmail.com>
# License:      This file is placed in public domain.


#>> If not running interactively, don't do anything
[[ $- != *i* ]] && return

################################################################################
## 1.                                                           SHELL OPTIONS ##
################################################################################

#>> Comando cd e "Pathname Expansion"

shopt -s autocd		# Caso o comando for um diretório, entra nele
			#   usando cd.

shopt -s cdable_vars	# Se o argumento de cd não for um diretório,
			#   é assumido que é o nome de uma vriável cujo
			#   valor é um diretório.

shopt -s cdspell	# Pequenos erros na escrita do diretório em cd
			#   serão corrigidos.

shopt -s direxpand	# Realiza expansões em nomes de diretórios.

shopt -s dotglob	# Inlui arquivos iniciador com '.' em resultado de
			#   Pathname Expansion.

shopt -s extglob	# Pathname Expansion estendido.

shopt -s globstar	# Asteriscos duplos (**) expandem para zero ou mais
			#   diretórios durante Pathname Expansion

shopt -s nocaseglob	# Case-insensitive Pathname Expansion.


#>> Hstórico e "History Substitution"

shopt -s cmdhist	# Salva comandos de múltiplas linhas em uma única
			#   linha no histórico.

shopt -s lithist	# Se cmdhist estiver habilitado, multiplas linhas são
			#   salvas no histórico separdas por quebra de linha,
			#   em vez de serem separadas por ponto e vírgula.

shopt -s histappend	# Histórico é adicionado ao arquivo de histórico em
			#   vez de substituir seu conteúdo. Isso permite que
			#   o histórico de vários terminais aberto ao mesmo
			#   tempo seja salvo em um único arquivo

shopt -s histverify	# "History Substitution" não é executada automaticamente,
			#   mas é carregada no prompt para o usuário poder
			#   editá-la.


#>> MISC

shopt -s checkjobs	# Estado de jobs será listado ao sair do sell,
			#   jobs e shell serão finalizados numa segunda
			#   tentativa de saída do shell.

shopt -s checkwinsize	# Checa tamanho da janela após cada comando.

shopt -s xpg_echo	# Usa automaticamente a opção -e no comando "echo".
			#   desative esse comportamento usando a opção -E


################################################################################
## 2.                                                                   TMUX  ##
################################################################################

 if which tmux 2>&1 >/dev/null; then
 	# if no session is started, start a new session
 	test -z ${TMUX} && tmux && exit
 	
 	# # when quitting tmux, try to attach
 	while test -z ${TMUX}; do
 		tmux attach || break
 	done
 fi

################################################################################
## 3.                                                                 PROMPT  ##
################################################################################

[[ -f ~/.bash/prompt ]] && . ~/.bash/prompt

# Exêmplo:
#
# ┌─[10:30]──[lucas@B1] pasta/atual [23 arquivos]
# └─> 1$

################################################################################
## 4.                                                              VARIÁVEIS  ##
################################################################################

PATH="~/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/java/bin/:./"
export LD_LIBRARY_PATH=./bin/:~/.local/share/Steam/SteamApps/common/GarrysMod/garrysmod/bin/:/opt/java/jre/lib/i386/

export PAGER="most -s"			# Man pages coloridas
export EDITOR="/usr/bin/vim"		# Editor padrão
export WWW_HOME="www.google.com.br"	# Homepage

export WINEDEBUG='fixme-all'
export GCC_COLORS


################################################################################
## 5.                                                        ALIAS E FUNÇÕES  ##
################################################################################

[[ -f ~/.bash/alias ]] && . ~/.bash/alias


################################################################################
## 6.                               PROGRAMAS EXECUTADOS NO INICIO DA SESSAO  ##
################################################################################

## MOSTRA ROTINA
view ~/.config/elos/20*/10*
clear

## INSTALAÇÃO DAS FUNCOES ZZ (www.funcoeszz.net)
export ZZOFF=""  # desligue funcoes indesejadas
export ZZPATH="/usr/bin/funcoeszz"  # script
source "$ZZPATH"

## MOSTRA FRASE ALEATÓRIA MAROTONA
frase

