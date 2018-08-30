alias ls='ls --color=auto --show-control-chars --group-directories-first -AhXF'
alias ll='ls --color=auto --show-control-chars --group-directories-first -AlshXF'
alias rm='rm -vI'
alias cp='cp -vi'
alias mv='mv -vi'
alias ln='ln -vi'
alias mkdir='mkdir -vp'
alias grep='grep --color=auto'
alias chmod='chmod -c --preserve-root'
alias chown='chown -c --preserve-root'
alias chgrp='chgrp -c --preserve-root'

set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
powerline-setup
