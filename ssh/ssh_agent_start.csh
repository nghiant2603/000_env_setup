#!/bin/csh

eval (ssh-agent -c)
ssh-add ~/.ssh/id_rsa
ssh -T git@github.com
