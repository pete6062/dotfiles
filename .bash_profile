#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# AUTOSTART XORG DISPLAY SERVER ON TTY1 LOGIN {{{
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    exec startx
fi
# }}}
