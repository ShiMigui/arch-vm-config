#!/bin/bash

# Installing git, code, and zsh
echo -e "Installing programs...\n"
sudo pacman -S --noconfirm qutebrowser zsh neovim > /dev/null 2>&1

# Git configuration 
echo -e "Configuring git..."
git config --global user.email "miguel.nasto@gmail.com"
git config --global user.name "Miguel Nascimento dos Santos"
git config --global --list

# Configuring oh-my-zsh
echo -e "Configuring oh-my-zsh...\n"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Oh My Zsh without auto-execution
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

# Copy .zshrc to home directory
echo "Copying .zshrc to home directory..."
cp ./.zshrc ~/

# Source the new .zshrc to apply changes
echo "Sourcing .zshrc to apply changes..."
source ~/.zshrc

echo "Setup complete!"