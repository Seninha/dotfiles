#!/usr/bin/zsh
#
# ZSH alias
# ==============================================================================
#
# A comment may contain the following strings that flags the commented line:
#
#   * RECURSIVE: The line is an alias to an alias.
#
#   * _DEPENDS_: The line  requires a package that isn't  provided by the groups
#                "base" or "base-devel" (Arch's Repository groups). This package
#                is mentioned in parentheses.
#


# Suffix aliases (writing a file name makes zsh opening it in a command)
# ==============================================================================

## Misc
alias -s exe=wine

## Vim 
alias -s txt=vim
alias -s c=vim
alias -s sh=vim
alias -s tex=vim
alias -s py=vim

## Internet Browser
alias -s html=firefox
alias -s com=firefox
alias -s org=firefox
alias -s net=firefox
alias -s edu=firefox


# Output Improvement 
# ==============================================================================

alias diff='colordiff'				# _DEPENDS_(colordiff)
alias df='df -h'				# Human redable
alias du='du -c -h'				# Human redable
alias egrep='egrep --color=auto'		# Colored egrep
alias free='free -ht'				# Human redable

# ls
alias ls='ls \
	--color=auto \
	--group-directories-first \
	--quoting-style=shell \
	-Fh'			# Colored,  directories  first,  quoting  style,
				# human redable and filetype indicator file ls

alias ll='ls -l'
alias lr='ls -R'
alias la='ls -A'
alias ld='ll -d'
alias llr='ls -lR'
alias lla='ls -lA'
alias lra='ls -RA'
alias llra='ls -lRA'


# Behavioral Improvements
# ==============================================================================

alias info='pinfo'				# _DEPEND_(pinfo)
alias grep='egrep'				# _RECURSIVE_
alias more='less'				# _DEPEND_(less)
alias nano='nano -w'
alias pacman='yaourt'				# _DEPEND_(yaourt)
alias sudo='sudo '				# Makes sudo suports alias expansion ;-) _DEPEND_(sudo)
alias tmux='unset TMUX && tmux'			# _DEPEND_(tmux)
alias cat='vimcat'				# _DEPEND_(vimcat)


# File Management (mainly security changes)
# ==============================================================================

alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias cp='cp -dRi'
alias mv='mv -i'
alias remove='rm -RiI'
alias ln='ln -i'
alias mkdir='mkdir -p -v'
alias rm='echo -e "Esse comando não está disponível por razões de segurança.
Em vez disso use o comando:
$ trash"'		# Removes the command rm  (because  I unconsciously have
                        # removed permanently files that should not be removed).
			# Instead,  use the command "trash",  provided in AUR by
			# the package "trash-cli"


# Development
# ==============================================================================

alias gcc='colorgcc'
alias wgcc='i486-mingw32-gcc'			# _DEPEND_(mingw32-gcc)
function wcc-ansi {				# _RECURSIVE_ _DEPEND_(mingw32-gcc)
  args=$*
  in=$(echo $args | sed -r "s/.* ([^ 	]*\.c).*/\1/")
  flags=$(echo $args | sed -r "s/${in}//")
  out=$(echo -n "$in" | sed -r 's/\.c$//')
  wgcc -g -ansi -Wall $flags $in -o "${out}.exe"
  }
function wcc {					# _RECURSIVE_ _DEPEND_(mingw32-gcc)
  args=$*
  in=$(echo $args | sed -r "s/.* ([^ 	]*\.c).*/\1/")
  flags=$(echo $args | sed -r "s/${in}//")
  out=$(echo -n "$in" | sed -r 's/\.c$//')
  wgcc -g -Wall $flags $in -o "${out}.exe"
  }
function cc-ansi {				# _RECURSIVE_
  args=$*
  in=$(echo $args | sed -r "s/.* ([^ 	]*\.c).*/\1/")
  flags=$(echo $args | sed -r "s/${in}//")
  out=$(echo -n "$in" | sed -r 's/\.c$//')
  gcc -Og -ansi -Wall $flags $in -o $out
  }
function cc {					# _RECURSIVE_
  args=$*
  in=$(echo $args | sed -r "s/.* ([^ 	]*\.c).*/\1/")
  flags=$(echo $args | sed -r "s/${in}//")
  out=$(echo -n "$in" | sed -r 's/\.c$//')
  gcc -Og -Wall $flags $in -o $out
  }


# New commands
# ==============================================================================

# Translation commands
alias traduzir='zztradutor'			# _DEPEND_(funcoeszz)
alias enpt='traduzir en-pt '			# _RECURSIVE_
alias pten='traduzir pt-en '			# _RECURSIVE_


# Music and Audio management
alias volume='alsamixer'			# _DEPEND_(alsa-utils)
alias lyric='lyvi'				# _DEPEND_(lyvi)
alias lyrics='lyvi'				# _DEPEND_(lyvi)
alias letra='lyvi'				# _DEPEND_(lyvi)
function mus {					# _DEPEND_(cmus)
  ARGS=$(echo $* | sed -r 's/.[0123456789]+/-v &%/')
  NUM=$#
  if [[ $NUM > 0 ]] ; then
    cmus-remote $ARGS
  else
    cmus
  fi
  }


# Wine and Emulation
cmd () {
	wine ~/.local/share/PyCmd/PyCmd.exe $*
	reset
}
	# This function depends on the command wine and on a win32 programm
	# named "PyCmd.exe". You must remove these lines if you haven't it.


# Power Management
alias poweroff='sudo poweroff'
alias reboot='sudo reboot'
alias desligar='poweroff'			# _RECURSIVE_
alias reiniciar='reboot'			# _RECURSIVE_


# Games
alias tetris='vitetris'				# _DEPEND_(vitetris)
alias matrix='cmatrix'				# _DEPEND_(cmatrix)


# Network
alias wifi="wicd-curses"			# _DEPEND_(wicd)


# Useful commands in prompt
alias nada='dd if=/dev/zero of=/dev/null'	# Does nothing
alias view='vimpager '				# _DEPEND_(vimpager)
alias open='kde-open &> /dev/null'
function hist {
  a=$*
  test $1 || a=^
  for i in $a
  do
    history | sed -r 's/^[\t ]*[1234567890]+\*?[\t ]+(.*$)/\1/ ; $d' |  grep -E -- $i -
  done
  }


# Vim-like Shortcuts
alias :q='exit'
alias :Q='exit'

alias :v='vim'
alias :V='vim'

