#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# PATH VARIABLES {{{
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
