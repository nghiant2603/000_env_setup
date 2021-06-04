#!/usr/bin/zsh -f

# Golang developers might need this one
#set -xg GOPATH $HOME/gocode

# Python developers otherwise
#set -xg PYTHONDONTWRITEBYTECODE 1

echo "ALIAS is reloaded..."

set filec
set autolist

alias ls="ls --color"
alias cl="clear;ls"
alias c="cd ../"
alias ll="ls -lt"
alias lg="ls -lt | egrep " 
alias c="cd ../"
alias vd="vimdiff"
alias his="history | egrep "

alias ssh_genkey="ssh-keygen -t rsa"
alias g_add="git add ."
alias g_com="git commit"
#alias g_remote='git remote add origin <ssh url>'
#alias g_pull {git pull origin master --allow-unrelated-histories}
#alias g_push {git push origin master}
#alias g_list {git remote -v}

alias venv="python3.8 -m virtualenv -p python3.8 "
alias venvls='find $HOME -type d -name "venv_*" | awk -F/ "{print \$NF}"'
alias venven='function _v(){source $HOME/$argv/bin/activate}; _v'

alias we="explorer.exe ."

export wuser='/mnt/c/Users/HP'
export wdata='/mnt/c/Users/HP/Documents/000_DATA'
export wdoc='/mnt/c/Users/HP/Documents/000_DATA/100_TECH/000_DOC'
export wcode='/mnt/c/Users/HP/Documents/000_DATA/100_TECH/100_CODE'

export SCREENDIR="$HOME/.screen"
export cfg_alias="$HOME/000_env_setup/alias.csh"
