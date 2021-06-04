#! /bin/csh

echo "Update & update grade linux"
sudo apt update
sudo apt upgrade

echo "Create password for current user"
sudo passwd $USER

#echo "Set timezone"
#sudo timedatectl set-timezone Asia/Ho_Chi_Minh

echo "Install & set default Cshell"
sudo apt-get install zsh
chsh -s `which zsh`

echo "Config Git"
#Note : gen and add pub ssh key to github using ssh-keygen
git config --global user.email "$USER@gmail.com"
git config --global user.name "$USER"

echo "Config Alias "
ln -sf `pwd`/alias.csh $HOME/.alias.csh

echo "Config cshrc "
ln -sf `pwd`/zshrc $HOME/.zshrc

echo "Config VIM"
ln -sf `pwd`/vimrc.local $HOME/.vimrc

echo "Install python3.8 - pip - virtualenv"
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.8
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo apt-get install python3.8-distutils
python3.8 get-pip.py
python3.8 -m pip install virtualenv
rm -rf get-pip.py

echo "Install Xlauch desktop on window machine to run GUI app"

#echo "Chrome Remote Desktop" >> run.log
#wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
#sudo apt install ./chrome-remote-desktop_current_amd64.deb
#sudo apt-get install xubuntu-desktop
#sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'
#sudo apt install --assume-yes xscreensaver
#sudo systemctl disable lightdm.service
#sudo usermod -a -G chrome-remote-desktop $USER
#echo ">>>>....At local machine, go to http://remotedesktop.google.com/headless config remote account"
#echo ">>>>....get link and run at VM machine to config DISPLAY"
