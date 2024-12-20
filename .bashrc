#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# umask {{{
# set default permissions.
umask 0022

#}}}

# ALIASES {{{
alias ls='ls --color=auto'

# call git commands on .dotfiles repo
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# reboot/poweroff without posting wall message
alias reboot='systemctl reboot --no-wall'
alias poweroff='systemctl poweroff --no-wall'

# }}}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
