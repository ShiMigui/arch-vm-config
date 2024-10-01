#!/bin/bash

# Git configuration 
echo -e "Configuring git..."
git config --global user.email "miguel.nasto@gmail.com"
git config --global user.name "Miguel Nascimento dos Santos"
git config --global --list

# Configuring oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && \
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && \
cp ./.zshrc ~/ && \
source ~/.zshrc

echo "Setup complete!"