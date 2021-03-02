#!/bin/csh

# Golang developers might need this one
set -xg GOPATH $HOME/gocode

# Python developers otherwise
set -xg PYTHONDONTWRITEBYTECODE 1

alias cl='clear;ls'
alias c='cd ../'
alias ll='ls -lt'
alias lg='ls -lt | egrep ' 
alias c='cd ../'
alias vd='vimdiff'

function ssh_start {Start-Service ssh-agent; ssh-add C:\Users\HP\.ssh\id_rsa}
function ssh_genkey {ssh-keygen -t rsa}
function g_add {git add .}
function g_com {git commit -m "add file"}
function g_remote {git remote add origin <ssh url>}
function g_pull {git pull origin master --allow-unrelated-histories}
function g_push {git push origin master}
function g_list {git remote -v}

alias _g='git '
alias _stt='git status'
alias _add='git add'
alias _cm ='git commit'
