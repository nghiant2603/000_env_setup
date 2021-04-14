#!/usr/bin/tcsh -f

# Golang developers might need this one
#set -xg GOPATH $HOME/gocode

# Python developers otherwise
#set -xg PYTHONDONTWRITEBYTECODE 1

echo "ALIAS is reloaded..."

set filec
set autolist

alias ls "ls --color"
alias cl "clear;ls"
alias c "cd ../"
alias ll "ls -lt"
alias lg "ls -lt | egrep " 
alias c "cd ../"
alias vd "vimdiff"
alias his "history | egrep "

alias ssh_genkey "ssh-keygen -t rsa"
alias g_add "git add ."
alias g_com "git commit"
#alias g_remote='git remote add origin <ssh url>'
#alias g_pull {git pull origin master --allow-unrelated-histories}
#alias g_push {git push origin master}
#alias g_list {git remote -v}

alias venv "python3.8 -m virtualenv -p python3.8 "

