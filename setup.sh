#!/usr/bin/env bash

SCRIPT_PATH=$(dirname $(realpath -s $0))

apt-get update

apt-get install -y silversearcher-ag
apt-get install -y tmux
apt-get install -y zsh
apt-get install -y vim

apt-get install -y stow
stow -d $SCRIPT_PATH -t ~ --stow . --ignore='setup.sh'


# Vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall


# Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux new-session -d "sleep 1"
sleep 0.1
~/.tmux/plugins/tpm/bin/install_plugins


# Zsh
chsh -s $(which zsh)
mkdir ~/.zplugin
git clone https://github.com/zdharma/zplugin.git ~/.zplugin/bin
exec zsh
source ~/.zshrc
zplugin update --all
