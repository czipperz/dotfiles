#!/usr/bin/bash

sudo pacman -Syu
sudo pacman -S zsh
sudo pacman -S xorg-server xorg-server-utils xorg-apps xorg-xinit
sudo pacman -S i3
sudo pacman -S otf-meslo-powerline-git ttf-meslo
sudo pacman -S firefox
sudo pacman -S rxvt-unicode tmux xsel
sudo pacman -S emacs

#read -p "Edit xfluxd-args settings? " -n 1 -r
#[[ $REPLY =~ ^[Yy]$ ]] && nano /etc/xfluxd-args.conf
#systemctl --user enable xfluxd-args

echo "Installing my git applications"
git clone https://github.com/czipperz/g
(cd g; ./install)
rm -R g

gcl robbyrussell/oh-my-zsh.git .oh-my-zsh
echo "Setting zsh as default shell"
chsh -s $(which zsh)
