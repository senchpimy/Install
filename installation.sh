!/bin/bash

pacman -S awesome curl git wget xorg-server xorg-xinit neovim rofi picom ranger zsh zathura xclip rxvt-unicode python python mpd mpv flameshot noto-fonts-emoji chafa
git clone https://aur.archlinux.org/yay-git.git && cd yay && makepkg -si
yay -S pywal-16-colors python-pynvim ttf-icomoon-feather noto-fonts-emoji ttf-nerd-fonts-symbols


git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf
