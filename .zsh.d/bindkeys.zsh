#!/usr/bin/zsh
#
# ZSH bindkeys
# ==============================================================================
#
# This file contains setting of ZSH keyboard (VIM-LIKE) bindkeys

bindkey -v


# Vi insert mode bindkeys
# ==============================================================================

## History Movement
bindkey "[5~"		beginning-of-buffer-or-history		# PGUP
bindkey "[6~"		end-of-buffer-or-history		# PGDOWN
bindkey "[A"		history-beginning-search-backward	# UP
bindkey "[B"		history-beginning-search-forward	# DOWN
bindkey ""		history-incremental-search-backward	# C-R

## Line Movement
bindkey "[1~"		beginning-of-line			# HOME
bindkey "[4~"		end-of-line				# END
bindkey "[D"	backward-word				# M-LEFT
bindkey "[C"	forward-word				# M-RIGHT

## Modifying Text
bindkey ""		backward-delete-char			# BACKSPACE
bindkey "\M-"		backward-delete-word			# M-BACKSPACE
bindkey "[3~"		delete-char				# DELETE
bindkey "\M-[3~"	delete-word				# M-DELETE
bindkey ""		backward-kill-line			# C-U
bindkey ""		kill-line				# C-K
bindkey "\M-'"		quote-line				# M-'
bindkey '\M-"'		quote-region				# M-"
bindkey "\M-#"		pound-insert				# M-#
bindkey ""		spell-word				# C-F
bindkey ""		what-cursor-position			# C-G

## Completion
bindkey "	"	menu-complete				# TAB
bindkey "[Z"		reverse-menu-complete			# M-TAB
bindkey "[2~"		list-choices				# INSERT
bindkey " "		magic-space				# SPACE


# Vi command mode bindkeys
# ==============================================================================

## History Movement
bindkey -a "[5~"	beginning-of-buffer-or-history		# PGUP
bindkey -a "[6~"	end-of-buffer-or-history		# PGDOWN
bindkey -a "gg"		beginning-of-buffer-or-history		# gg
bindkey -a "G"		end-of-buffer-or-history		# G
bindkey -a "[A"	history-beginning-search-backward	# UP
bindkey -a "[B"	history-beginning-search-forward	# DOWN
bindkey -a ""		history-incremental-search-backward	# C-R
bindkey -a "\M-OD"	backward-word				# M-LEFT
bindkey -a "\M-OC"	forward-word				# M-RIGHT
bindkey -a "/"		history-incremental-search-backward	# /
bindkey -a "/"		history-incremental-search-forward	# ?
bindkey -a "n"		vi-repeat-search			# n
bindkey -a "N"		vi-rev-repeat-search			# N

## Line Movement
bindkey -a "[1~"	beginning-of-line			# HOME
bindkey -a "[4~"	end-of-line				# END

## Modifying Text
bindkey -a ""		backward-delete-char			# BACKSPACE
bindkey -a "\M"	backward-delete-word			# M-BACKSPACE
bindkey -a "[3~"	delete-char				# DELETE
bindkey -a "\M[3~"	delete-word				# M-DELETE
bindkey -a ""		backward-kill-line			# C-U
bindkey -a ""		kill-line				# C-K
bindkey -a "'"		quote-line				# M'
bindkey -a '"'		quote-region				# "
bindkey -a "#"		pound-insert				# #
bindkey -a "[2~"	vi-insert				# INSERT
bindkey -a "z"		spell-word				# z
bindkey -a "u"		undo					# u
bindkey -a ""		redo					# C-R
bindkey -a ""		what-cursor-position			# C-G

## Completion
bindkey -a "	"	menu-complete				# TAB
bindkey -a "[Z"	reverse-menu-complete			# M-TAB
bindkey -a " "		magic-space				# SPACE


