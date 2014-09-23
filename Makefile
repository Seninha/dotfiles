#!/usr/bin/make -f
#
# makefile - Makefile for dotfiles
# ==============================================================================
#
# The "Top-Level Targets" are the following:
#
# make all            Build my dotfiles in the directory `build/`.
#
# make install        Copy the files in `build/` to your home directory. This
#                     target also makes a backup of the previous dirfiles in
#                     your `$HOME` in `bkp/`.
#
# make backup         Makes a backup of the previous dirfiles in your Home
#                     directory into the directory `bkp/`.
#
# make clean          Remove every data created but the backup.

SHELL=/bin/sh


# Directories - Variables for directories used in this project
# ==============================================================================
dir        = .
srcdir     = $(dir)/src
blddir     = $(dir)/build
bkpdir     = $(dir)/bkp
tmpdir     = $(dir)/tmp
installdir = $(HOME)


# Dotfiles - List of dotfiles
# ==============================================================================
dotfiles   = $(patsubst $(srcdir)/%,$(blddir)/.%,$(wildcard $(srcdir)/*))
bkpfiles   = $(patsubst $(srcdir)/%,$(installdir)/.%,$(wildcard $(srcdir)/*))


# Targets
# ==============================================================================

.PHONY: all install dirs backup clean

## Top-Level Targets

all: $(dotfiles) $(blddir)/.antigen.zsh $(blddir)/.vim/bundle/Vundle.vim

install: all
	cp -R $(dotfiles) $(blddir)/.antigen.zsh $(blddir)/.vim $(installdir)

backup: dirs
	cp -n $(bkpfiles) $(bkpdir)

clean:
	rm -r $(blddir) $(tmpdir)


## Low-Level Targets

dirs:
	mkdir -p $(blddir)
	mkdir -p $(bkpdir)
	mkdir -p $(tmpdir)

$(dotfiles): dirs
$(dotfiles): $(blddir)/.% : $(srcdir)/%
	cp $< $@

$(blddir)/.antigen.zsh:
	git clone https://github.com/zsh-users/antigen $(tmpdir)/antigen
	cp $(tmpdir)/antigen/antigen.zsh $(blddir)/.antigen.zsh

$(blddir)/.vim/bundle/Vundle.vim:
	mkdir -p $(blddir)/.vim/bundle/Vundle.vim
	git clone https://github.com/gmarik/Vundle.vim.git $(blddir)/.vim/bundle/Vundle.vim
