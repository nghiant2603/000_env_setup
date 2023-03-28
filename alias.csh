#!/usr/bin/zsh -f

# Golang developers might need this one
#set -xg GOPATH $HOME/gocode

# Python developers otherwise
#set -xg PYTHONDONTWRITEBYTECODE 1

echo "ALIAS is reloading..."

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
alias g_list="git remote -v"

alias python="python3"
alias pip="python3 -m pip"
alias venv="python3 -m virtualenv"

export data=/Users/$USER/000_DATA
export cfg_alias=/Users/$USER/000_DATA/000_linux_setup/alias.csh

echo "ALIAS is reloaded..."
