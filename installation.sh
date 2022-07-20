#!/bin/bash
#slock
#pip colorz haishoku colorthief fast-colorthief qutebrowser colorama Pillow

if (whiptail --yesno "Cambiar el layout" 8 50 )
then
echo "keymap="la-latin1"" | sudo tee -a /etc/conf.d/keymaps
fi

if (whiptail --yesno "Agregar espejos?" 8 50 )
then
	pacman -Syu artix-archlinux-support 
	
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
fi

if (whiptail --yesno "Intalar programas base?" 8 50 )
then
pacman -S awesome curl git wget xorg-server xorg-xinit neovim rofi picom ranger zsh zathura xclip rxvt-unicode python python mpd mpv flameshot noto-fonts-emoji chafa scim bluez emacs gimp xcompmgr python-pip ttf-hack fzf fontconfig scim htop youtube-dl trash-cli qutebrowser qbittorrent mpv 
git clone https://aur.archlinux.org/yay-git.git ~/apps && cd yay && makepkg -si
yay -S pywal-16-colors python-pynvim ttf-icomoon-feather noto-fonts-emoji ttf-nerd-fonts-symbols nerd-fonts-incosolata tetris-terminal-git tty-clock peerflix czkawka 
fi


if (whiptail --yesno "Instalar configuraciones?" 8 50 )
then
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
fi
