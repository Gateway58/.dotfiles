#!/usr/bin/bash
sudo pacman -S zsh zsh-syntax-highlighting zsh-autosuggestions zsh-history-substring-search
echo "if [ -r \$HOME/.config/zsh/zshrc ]; then\n\tsource \$HOME/.config/zsh/zshrc\nfi\n" > $HOME/test.zsh
chsh $USERNAME -s /bin/zsh
sudo pacman -S i3-wm i3blocks
sudo pacman -S tmux
sudo pacman -S alacritty
sudo pacman -S neovim
