Seninha's Config files
================================================================================

Config files for my environment.

**WARNING!** The files in this repository are highly vim-oriented and
myself-oriented. So if you don't use vim and if you aren't me, you must edit
most of these files.

Each dotfile is very simple and well documented, so don't be afraid to change
them, even if you don't know their syntax.


## Features

For now, I have dotfiles for the following applications:

 Application | Description
-------------|-------------------------------------------------------------------------------
 Zsh         | My `.zshrc` is really simple. It uses [Antigen]() to manage plugins.
 Vim         | My `.vimrc` is really simple. It uses [Vundle]() to manage plugins.
 Readline    | Readline is a library, used by bash, that provides a prompt, or a editing interface for command line. `.inputrc` is the configuration file for Readline.
 Dircolors   | Dircolors is the tool used by `ls(1)` and other commands to determine the colors in which the filenames are to be displayed

And yes, I don't have .bashrc since I don't use bash anymore...

[Antigen]: https://github.com/zsh-users/antigen
[Vundle]:  https://github.com/gmarik/Vundle.vim 


## Installation

To install (i.e. copy my dotfiles into your home directory) is really simple.
You can do it mannually or automatically:


### The manual way

Just copy each file in `src/` dir into your `~/`, you must adding a dot (`.`)
before each file.

After install it manually, you must install [Antigen]() and [Vundle]() by
yourself (they are responsible for managing the plugins in `.zshrc` and
`.vimrc`).


### The automatic way

Just run the following command, it will copy the dotfiles and intall *Antigen*
and *Vundle* by itself:

    ```
    make install
    ```

