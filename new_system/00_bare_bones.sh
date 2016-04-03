#!/bin/bash

# update packages and upgrade
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get -y upgrade

# get programs
sudo apt-get -y install git openssh-server build-essential gparted terminator tmux zsh curl vlc mplayer ffmpeg cmake

# clone git config repo
mkdir -p $HOME/git/config
git clone https://github.com/sciff90/config.git $HOME/git/config

# get ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


