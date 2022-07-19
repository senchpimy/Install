#!/bin/bash
#slock
#pip colorz haishoku colorthief fast-colorthief qutebrowser colorama Pillow
echo "keymap="la-latin1"" | sudo tee -a /etc/conf.d/keymaps
sudo locale-gen
pacman -Syu artix-arch-linux-support 

echo '
#[testing]
#Include = /etc/pacman.d/mirrorlist-arch
 
 
[extra]
Include = /etc/pacman.d/mirrorlist-arch
 
 
#[community-testing]
#Include = /etc/pacman.d/mirrorlist-arch
 
 
[community]
Include = /etc/pacman.d/mirrorlist-arch


#[multilib-testing]
#Include = /etc/pacman.d/mirrorlist-arch

[universe]
  Server = https://universe.artixlinux.org/$arch
  Server = https://mirror1.artixlinux.org/universe/$arch
  Server = https://mirror.pascalpuffke.de/artix-universe/$arch
  Server = https://artixlinux.qontinuum.space/artixlinux/universe/os/$arch
  Server = https://mirror1.cl.netactuate.com/artix/universe/$arch
  Server = https://ftp.crifo.org/artix-universe/

 
[multilib]
Include = /etc/pacman.d/mirrorlist-arch
 ' |sudo  tee -a /etc/pacman.conf > /dev/null


pacman-key --populate archlinux
pacman -S awesome curl git wget xorg-server xorg-xinit neovim rofi picom ranger zsh zathura xclip rxvt-unicode python python mpd mpv flameshot noto-fonts-emoji chafa scim bluez emacs gimp xcompmgr python-pip ttf-hack fzf fontconfig scim htop youtube-dl
git clone https://aur.archlinux.org/yay-git.git ~/apps && cd yay && makepkg -si
yay -S pywal-16-colors python-pynvim ttf-icomoon-feather noto-fonts-emoji ttf-nerd-fonts-symbols nerd-fonts-incosolata tetris-terminal-git tty-clock peerflix czkawka 

git clone https://github.com/senchpimy/awesomewmconfig ~/.config/awesome
git clone https://github.com/senchpimy/pywal_templates.git ~/.config/wal/
git clone https://github.com/senchpimy/ranger.git ~/.config/ranger
git clone https://github.com/senchpimy/nvim.git ~/.config/nvim
git clone https://github.com/senchpimy/rofi.git ~/.config/rofi
git clone https://github.com/senchpimy/st.git ~/apps && cd ~/apps/st && sudo make clean install
git clone https://github.com/senchpimy/dotfiles.git ~/.config/dotfiles
mv ~/.config/dotfiles/.zshrc ~/.zshrc

git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf
