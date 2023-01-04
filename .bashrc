#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# umask {{{
# set default permissions.
umask 0022

#}}}

# ALIASES {{{
alias ls='ls --color=auto'

# call git commands on .dotfiles repo
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# }}}

# ENVIRONMENT VARIABLES {{{

# set the default editor.
export EDITOR=vim

# shell history recording ignores command if same command 
# was just recorded.
export HISTCONTROL=ignoredups

# set custom terminal prompt
PS1="\[\033[0;37m\][\u@\h \W]$\[\033[0m\] "
export PS1
# }}}
