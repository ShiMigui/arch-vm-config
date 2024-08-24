#!/bin/bash

#Installing git, code and zsh
echo -e "Installing git, code & zsh...\n"
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm git code zsh

#Git configuration 
echo -e "Configuring git..."
git config --global user.email = "miguel.nasto@gmail.com"
git config --global user.name = "Miguel Nascimento dos Santos"
git config --global --list

#Configuring oh-my-zsh
echo -e "Configuring oh-my-zsh...\n"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Moving files
echo -e "Moving files...\n"
mv ./files/.zshrc ~/
mv ./files/comppile.sh ~/.local/bin/

echo -e "Installation complete! Rebooting...\n"

chsh -s $(which zsh)
source ~/.zshrc

for i in {3..1}; do
    echo "$i..."
    sleep 1
done
sudo reboot now