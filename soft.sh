#!/bin/bash

# install git
sudo pacman -S git

# install yay
cd ~/
sudo git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
cd ../
rm -rf yay-git

# install chrome
yay -S google-chrome

# install terminal
sudo pacman -S wezterm

# install utils
sudo pacman -S zip unzip curl wget vim xclip vlc

# install vs code
sudo pacman -S code

# install zsh
sudo pacman -S zsh
yay -S ttf-meslo-nerd-font-powerlevel10k
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd ~/
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo "You need to change theme in zshrc: ZSH_THEME=\"powerlevel10k/powerlevel10k\""
read -p "Press enter to continue"
vim ~/.zshrc

### Languages

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# go
sudo pacman -S go

# python3
sudo pacman -S python3 