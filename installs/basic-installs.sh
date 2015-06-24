#!/usr/bin/bash
yaourt -Syu
yaourt -S zsh xorg-server xorg-server-utils xorg-apps xorg-xinit ctags
yaourt -S awesome screenfetch pgem-git rakudo alsa-utils
yaourt -S jdk otf-meslo-powerline-git ttf-meslo gvim scrot
yaourt -S intellij-idea-ce-eap chromium terminator
yaourt -S xfluxd-args
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
