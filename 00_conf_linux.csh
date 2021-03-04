#! /bin/csh

#echo "Create password for current user"
#sudo passwd $USER
#
#echo "Set timezone"
#sudo timedatectl set-timezone Asia/Ho_Chi_Minh
#
#echo "Config VIM"
#ln -sf `pwd`/vimrc.local $HOME/.vimrc
#
#echo "Install - Config Fish Shell & OMF"
#sudo apt-add-repository ppa:fish-shell/release-2
#sudo apt install fish
#chsh -s `which fish`
#curl -L https://get.oh-my.fish > install
#if (-f $HOME/.config/fish/config.fish) then
#  rm -rf $HOME/.config/fish/config.fish
#endif
#fish install
#rm -rf install
#omf install beloglazov
#omf theme beloglazov
ln -sf (pwd)/fish_prompt.fish $HOME/.config/fish/functions/fish_prompt.fish
ln -sf (pwd)/config.fish $HOME/.config/fish/config.fish
ln -sf (pwd)/alias.csh $HOME/.alias.csh
