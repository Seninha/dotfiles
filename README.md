Seninha's Config files
================================================================================

Some config  files related to `bash` and `vim` that  provides a nice environment
to terminal.

These files were build based in some rules:

- The files use or implement less variables as possible for controlling the
behaviour of the bash/zsh. Every behaviour must be setted using builtin commands,

- The files are well commented using a comment syntax similar to Markdown.

- The files' content are separeted by logical blocks of code

Here's a preview of my bash prompt:

![Seninha's Bash Prompt](http://seninha.net/stuff/prompt.png)


Warning!
--------

The files in this repository are highly vim-oriented and myself-oriented.
So if you don't use vim and if you aren't me, you must edit these file.


File List
---------

### ZSH Files ###

 Filename                | Description
-------------------------|-------------------------------------------------------------------------------
 .zshrc                  | Zsh configuration of interactive shlles. It uses antigen to manage plugins
 .antigen.zsh            | Plugins downloader and manager


### Bash Files ###

 Filename      | Description
---------------|------------------------------------------------------------------------
 .bashrc       | Configuration of interactive shells. It contains the shell options, environment variables, programs run at login time and more.
 .bash_alias   | Aliases and Functions. Contains information about requering external commands
 .bash_prompt  | An AMAZING Prompt that informs how many files you have in the current dir, the current branch, the current branch status and MORE!
 .inputrc      | Keyboard mapping for Readline (the input-related library used by bash)


### Others Files ###

 Filename      | Description
---------------|--------------------------------------------------------------------------------
 .dir_colors   | Configuration file for **dircolors(1)** used by GNU ls command
 .tmux.conf    | Configuration for tmux, the terminal multiplexer. I'm working on this file
 .vimrc        | Configuration for Vim. It has a lot of stuff and plugins managed by [Vundle][]

[Vundle]: https://github.com/gmarik/Vundle.vim

