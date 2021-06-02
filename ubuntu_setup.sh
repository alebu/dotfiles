#!/bin/bash

sudo apt update

# Vim
sudo apt install vim
ln -s ~/projects/dotfiles/vim/.vimrc ~/.vimrc

# NordVPN
sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)

# Oh-my-zsh
echo installing oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo linking custom .zshrc file
rm ~/.zshrc
rm -r ~/.zsh
ln -s ~/projects/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/projects/dotfiles/zsh/.zsh ~/.zsh

# Tmux
echo installing tmux
sudo apt install tmux
sudo apt install tmux-bash-completion-git
rm ~/.tmux.conf
ln -s ~/projects/dotfiles/tmux/.tmux.conf ~/.tmux.conf

# R

# Python
sudo apt install pyenv
pip install -U pipenv

# utilities
sudo apt install htop

# LaTex

# VSCode

