#!/bin/bash 

sudo apt-get install mercurial git tree vim ipython nginx ruby curl gnome-shell g++ mysql-client-core-5.5 sqlite3 tree vnstat
sudo add-apt-repository ppa:canonical-qt5-edgers/qt5-proper
sudo add-apt-repository ppa:ubuntu-sdk-team/ppa && sudo apt-get update && sudo apt-get install ubuntu-sdk notepad-qml

sudo apt-get install qemu 
if [ -e "$HOME/.rvm/bin/rvm" ];then
    echo "rvm exits"
else
    curl -L https://get.rvm.io | bash -s stable --ruby
fi

source $HOME/.rvm/scripts/rvm
rvm pkg install openssl
rvm reinstall all --force
rvm reinstall 1.9.3 --with-openssl-dir=/home/ham/.rvm/usr

gem install sqlite3 --no-ri --no-rdoc
gem install rails


# node.js tools

sudo npm install -g express
sudo npm install -g yo grunt-cli bower 

sudo apt-get install pcscd
sudo apt-get install libpcsc-perl
sudo apt-get install pcsc-tools
sudo apt-get install libccid

# python 
sudo apt-get install python python-pip python-dev build-essential 
sudo pip install --upgrade pip 
sudo ln -fs /usr/local/bin/pip-2.7 /usr/bin/pip
sudo pip install --upgrade virtualenv 

# UberWriter for Markdown
sudo add-apt-repository ppa:w-vollprecht/ppa
sudo apt-get update
sudo apt-get install uberwriter

# blender
sudo apt-get install blender

# Terminal
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator

# Umbrello 
sudo apt-get install umbrello

# CppCheck
sudo apt-get install cppcheck

# Fish shell
sudo apt-get install fish

# htop
sudo apt-get install htop

# Oh My Fish!
curl -L https://github.com/bpinto/oh-my-fish/raw/master/tools/install.sh | sh

# Crash
apt-get install crash

# vmlinux then can be found here: /usr/lib/debug/boot/vmlinux-$(uname -r) 
echo "deb http://ddebs.ubuntu.com $(lsb_release -cs)-updates main restricted universe multiverse
deb http://ddebs.ubuntu.com $(lsb_release -cs)-security main restricted universe multiverse
deb http://ddebs.ubuntu.com $(lsb_release -cs)-proposed main restricted universe multiverse" | \
sudo tee -a /etc/apt/sources.list.d/ddebs.list

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 428D7C01

sudo apt-get update
# sudo apt-get install linux-image-$(uname -r)-dbgsym

# Pencil
sudo apt-get install pencil

# qemu 
sudo apt-get install qemu bridge-utils uml-utilities vtun

# qemu 
sudo apt-get install gtkwave

# patch config.fish
patch -p1 $HOME/.config/config.fish < config.fish.diff

# Install Font
cp *.otf $HOME/.local/share/fonts/
cp *.TTF $HOME/.local/share/fonts/

# install gitconfig 
cp gitconfig $HOME/.gitconfig
#
cp git_vimdiff_wrapper $HOME/

# conky
cp ./conky/conkyrc $HOME/.conkyrc
cp ./conky/conky-google-now $HOME/.conky-google-now

