#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\033[01;31m\]\u@\H\[\e[0m\]: \[\033[01;34m\]\w\[\e[0m\]$ '
#PS1='[\u@\h \w]\$ '  #Default

alias ls='ls --color=auto --show-control-chars --group-directories-first -hXF'
alias ll='ls --color=auto --show-control-chars --group-directories-first -lashXF'
alias rm='rm -vI'
alias cp='cp -vi'
alias mkdir='mkdir -vp'
alias chmod='chmod -c --preserve-root'
alias chown='chown -c --preserve-root'
alias chgrp='chgrp -c --preserve-root'

alias cal='cal -y'
alias yd='youtube-dl -o "/music/misc/%(title)s.%(ext)s"'

export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth



[ -f ~/.fzf.bash ] && source ~/.fzf.bash

function parsemail { egrep -o '[A-Za-z0-9._]+@[A-Za-z0-9.]+\.[a-zA-Z]{2,4}' "${1}" > "${2}" ; };

function sshcc { sudo scp "${@:2}" cc147358@home.inf.ufg.br:/home/alunos/cc/cc147358/"${1}" ; };
