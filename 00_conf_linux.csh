#! /bin/csh

#echo "Create password for current user" > run.log
#sudo passwd $USER
#
#echo "Set timezone" >> run.log
#sudo timedatectl set-timezone Asia/Ho_Chi_Minh
#
#echo "Config Git" >> run.log
#git config --global user.email "$USER@gmail.com"
#git config --global user.name "$USER"

#echo "Config VIM" >> run.log
#ln -sf `pwd`/vimrc.local $HOME/.vimrc
#
#echo "Install pip & virtualenv" >> run.log
#sudo apt update
#sudo apt install python-pip
#sudo apt install python2-pip
#sudo apt install software-properties-common                                                                                                              
#sudo apt install virtualenv

#echo "Install Python3.8 - pip - virtualenv" >> run.log
#sudo add-apt-repository ppa:deadsnakes/ppa
#sudo apt update
#sudo apt install python3.8
#curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
#sudo apt-get install python3.8-distutils
#python3.8 get-pip.py
#python3.8 -m pip install virtualenv
#
#echo "Install Fish Shell" >> run.log
#sudo apt-add-repository ppa:fish-shell/release-2
#sudo apt update
#sudo apt install fish
#chsh -s `which fish`

#echo "Install - Config OMF " >> run.log
#curl -L https://get.oh-my.fish > install
#if (-f $HOME/.config/fish/config.fish) then
#  rm -rf $HOME/.config/fish/config.fish
#endif
#fish install
#rm -rf install
#omf install beloglazov
#omf theme beloglazov
#ln -sf `pwd`/fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish
#ln -sf `pwd`/config.fish $HOME/.config/fish/config.fish

#echo "Config Alias " >> run.log
#ln -sf `pwd`/alias.csh $HOME/.alias.csh
