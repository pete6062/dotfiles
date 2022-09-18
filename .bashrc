#
# ~/.bashrc
#

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

# c++ includes for projects:
CPLUS_INCLUDE_PATH=~/repos/engine/include
CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:~/repos/engine/src
export CPLUS_INCLUDE_PATH

# set the default editor.
export EDITOR=nvim

# shell history recording ignores command if same command 
# was just recorded.
export HISTCONTROL=ignoredups

# set custom terminal prompt
PS1="\[\033[0;33m\][\u@\h \W]$\[\033[0m\] "
export PS1
# }}}
