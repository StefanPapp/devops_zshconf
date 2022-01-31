#!/bin/sh
sudo apt upgrade
sudo apt install vim  

# core dev
sudo apt install jq gcc gpp git git-extras fd-find thefuck tig hub wget curl tmux openssh-server
# cli
sudo apt install ripgrep exa zsh zplug

# python
sudo apt install python3 python3-pip

./install_generic.sh
