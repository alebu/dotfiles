#!/bin/bash

sudo pacman-mirrors --country United_Kingdom
sudo pacman -Syu

# Vim
sudo pacman -S --needed vim
rm ~/.vimrc
ln -s ~/projects/dotfiles/vim/.vimrc ~/.vimrc

# sudo amac build nordvpn-bin
sudo systemctl enable --now nordvpnd

# Oh-my-zsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo linking custom .zshrc file
rm ~/.zshrc
rm -r ~/.zsh
ln -s ~/projects/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/projects/dotfiles/zsh/.zsh ~/.zsh

# Tmux
sudo pacman -S --needed tmux
sudo pacman -S --needed tmux-bash-completion-git
rm ~/.tmux.conf
ln -s ~/projects/dotfiles/tmux/.tmux.conf ~/.tmux.conf

# R
sudo pacman -S --needed r
pamac build rstudio-desktop-bin

# Python
sudo pacman -S --needed pyenv
pip install -U pipenv

# utilities
sudo pacman -S --needed htop

# LaTex
sudo pacman -Sy --needed texlive-most texlive-bin

# VSCode
pamac build visual-studio-code-bin

# Enable TRIM
sudo systemctl enable fstrim.timer
