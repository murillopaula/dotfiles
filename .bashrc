#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='\[\033[01;31m\]\u@\H\[\e[0m\]: \[\033[01;34m\]\w\[\e[0m\]$ '
#PS1='[\u@\h \w]\$ '  #Default

ESC=$'['
END_ESC=m

NOPRINT='\['
END_NOPRINT='\]'

WRAP="$NOPRINT$ESC"
END_WRAP="$END_ESC$END_NOPRINT"

RESET="${WRAP}0${END_WRAP}"
RESET_BG="${WRAP}49${END_WRAP}"

NORMAL="${WRAP}21${END_WRAP}"
BOLD="${WRAP}1${END_WRAP}"

function __fg_color {
    printf "%s" "${WRAP}38;5;${1}${END_WRAP}"
}

function __bg_color {
    printf "%s" "${WRAP}48;5;${1}${END_WRAP}"
}

BLACK=$(__fg_color 0)
RED=$(__fg_color 1)
GREEN=$(__fg_color 2)
YELLOW=$(__fg_color 3)
BLUE=$(__fg_color 4)
PURPLE=$(__fg_color 5)
CYAN=$(__fg_color 6)
WHITE=$(__fg_color 7)

ALT_BLACK=$(__fg_color 8)
ALT_RED=$(__fg_color 9)
ALT_GREEN=$(__fg_color 10)
ALT_YELLOW=$(__fg_color 11)
ALT_BLUE=$(__fg_color 12)
ALT_PURPLE=$(__fg_color 13)
ALT_CYAN=$(__fg_color 14)
ALT_WHITE=$(__fg_color 15)

BLACK_BG=$(__bg_color 0)
RED_BG=$(__bg_color 1)
GREEN_BG=$(__bg_color 2)
YELLOW_BG=$(__bg_color 3)
BLUE_BG=$(__bg_color 4)
PURPLE_BG=$(__bg_color 5)
CYAN_BG=$(__bg_color 6)
WHITE_BG=$(__bg_color 7)

ALT_BLACK_BG=$(__bg_color 8)
ALT_RED_BG=$(__bg_color 9)
ALT_GREEN_BG=$(__bg_color 10)
ALT_YELLOW_BG=$(__bg_color 11)
ALT_BLUE_BG=$(__bg_color 12)
ALT_PURPLE_BG=$(__bg_color 13)
ALT_CYAN_BG=$(__bg_color 14)
ALT_WHITE_BG=$(__bg_color 15)

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

function parsemail { egrep -o '[A-Za-z0-9._]+@[A-Za-z0-9.]+\.[a-zA-Z]{2,4}' "${1}" > "${2}" ; };

function sshcc { sudo scp "${@:2}" cc147358@home.inf.ufg.br:/home/alunos/cc/cc147358/"${1}" ; };

[ -f ~/gruvbox_256palette ] && source ~/gruvbox_256palette
[ -f ~/bash-prompt ] && source ~/bash-prompt
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
