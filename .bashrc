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
