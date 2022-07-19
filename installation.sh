!/bin/bash

pacman -S awesome curl git wget xorg-server xorg-xinit neovim rofi picom ranger zsh zathura xclip rxvt-unicode python python mpd mpv flameshot noto-fonts-emoji chafa scim
git clone https://aur.archlinux.org/yay-git.git && cd yay && makepkg -si
yay -S pywal-16-colors python-pynvim ttf-icomoon-feather noto-fonts-emoji ttf-nerd-fonts-symbols nerd-fonts-incosolata

git clone https://github.com/senchpimy/awesomewmconfig ~/.config/awesome
git clone https://github.com/senchpimy/pywal_templates.git ~/.config/wal/
git clone https://github.com/senchpimy/ranger.git ~/.config/ranger
git clone https://github.com/senchpimy/nvim.git ~/.config/nvim
git clone https://github.com/senchpimy/rofi.git ~/.config/rofi
git clone https://github.com/senchpimy/st.git ~/apps
git clone https://github.com/senchpimy/dotfiles.git ~/.config/dotfiles
mv ~/.config/dotfiles/.zshrc ~/.zshrc

git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf
