#!/bin/sh zsh

# # tmux ls
# keepMe: 1 windows (created Wed Jun 24 14:20:15 2015) [171x41]
# otherSession: 1 windows (created Wed Jun 24 14:22:01 2015) [171x41]
# 3: 1 windows (created Wed Jun 24 14:23:28 2015) [171x41]

# (assuming here that you're on keepMe session)
# # tmux kill-session -t otherSession
# -or-
# # tmux kill-session -t 3

# jammy is Ubuntu

sudo apt-get update

sudo apt-get -y install tmux
sudo apt-get -y install neovim

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
rm lazygit.tar.gz



sudo apt-get -y install 
sudo apt-get -y install tmux neovim python3-pip npm nodejs cargo ripgrep lazygit starship fontforge py3-configargparse
