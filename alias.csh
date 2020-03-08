#!/bin/csh

# Golang developers might need this one
set -xg GOPATH $HOME/gocode

# Python developers otherwise
set -xg PYTHONDONTWRITEBYTECODE 1

set utility $HOME/utility
set cfg_alias $HOME/utility/alias.csh

alias python='/usr/bin/python3'

alias cl='clear;ls'
alias c='cd ../'
alias ll='ls -lt'
alias lg='ls -lt | egrep ' 
alias c='cd ../'
alias vd='vimdiff'

alias _g='git '
alias _stt='git status'
alias _add='git add'
alias _cm ='git commit'
