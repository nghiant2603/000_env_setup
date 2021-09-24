#!/usr/bin/zsh -f

PROMPT="%F{red}%T %F{yellow}%D %F{green}%n@%m %F{cyan}%0d %F{white}>"$'\n'">>> %F{reset}"
export DISPLAY="`grep nameserver /etc/resolv.conf | sed 's/nameserver //'`:0.0"
export LS_COLORS="di=96:fi=0:ln=93:pi=5:so=5:bd=5:cd=5:or=101:mi=101:ex=92:*.v=35:*.vg=35:*.gv=35:*.tcl=35:*.scm=35:*.mgm=35:*.mky=35:*.pt=35"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

source ~/.alias.csh
