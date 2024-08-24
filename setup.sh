#!/bin/bash

#Installing git, code and zsh
echo "Installing git, code & zsh..."
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm git code zsh

#Configuring oh-my-zsh
echo "Configuring oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Moving files
echo "Moving files..."
mv ./files/.zshrc ~/
mv ./files/comppile.sh ~/.local/bin/

chsh -s $(which zsh)
source ~/.zshrc

echo "Installation complete!"

for i in {3..1}; do
    echo "$i..."
    sleep 1
done
sudo reboot now