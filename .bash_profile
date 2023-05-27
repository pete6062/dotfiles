#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# ENVIRONMENT VARIABLES {{{

export EDITOR=vim
export HISTCONTROL=ignoredups

# set custom terminal prompt
PS1="\[\033[0;37m\][\u@\h \W]$\[\033[0m\] "
export PS1

# set PATH
PATH=$PATH:/usr/sbin
PATH=$PATH:/sbin

# Add to PATH if ~/bin directory exists.
if [[ -d $HOME/bin ]]; then
    PATH=$PATH:$HOME/bin
fi

if [[ -d $HOME/.local/bin ]]; then
    PATH=$PATH:$HOME/.local/bin
fi

export PATH

# }}}

# AUTOSTART XORG DISPLAY SERVER ON TTY1 LOGIN {{{
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec startx
fi
# }}}
