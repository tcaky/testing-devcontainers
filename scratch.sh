#!/bin/sh zsh

# # tmux ls
# keepMe: 1 windows (created Wed Jun 24 14:20:15 2015) [171x41]
# otherSession: 1 windows (created Wed Jun 24 14:22:01 2015) [171x41]
# 3: 1 windows (created Wed Jun 24 14:23:28 2015) [171x41]

# (assuming here that you're on keepMe session)
# # tmux kill-session -t otherSession
# -or-
# # tmux kill-session -t 3

sudo apk update
sudo apk add tmux
sudo apk add neovim
sudo apk add py-pip
sudo apk add npm
sudo apk add nodejs
sudo apk add cargo
sudo apk add ripgrep
sudo apk add lazygit
sudo apk add starship
sudo apk add fontforge
sudo apk add py3-configargparse

# OR
sudo apk update
sudo apk add tmux neovim py-pip npm nodejs cargo ripgrep lazygit starship fontforge py3-configargparse

# LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)


curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
fontforge -script font-patcher PATH_TO_FONT

# git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts
git clone --filter=blob:none --sparse https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
git sparse-checkout add patched-fonts/JetBrainsMono
curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash


# warning: be sure to add `/home/vscode/.cargo/bin` to your PATH to be able to run the installed binaries
# All Rust dependencies are successfully installed
# --------------------------------------------------------------------------------
# Cloning LunarVim configuration
# Cloning into '/home/vscode/.local/share/lunarvim/lvim'...
# remote: Enumerating objects: 160, done.
# remote: Counting objects: 100% (160/160), done.
# remote: Compressing objects: 100% (147/147), done.
# remote: Total 160 (delta 4), reused 76 (delta 2), pack-reused 0
# Receiving objects: 100% (160/160), 149.63 KiB | 9.35 MiB/s, done.
# Resolving deltas: 100% (4/4), done.
# --------------------------------------------------------------------------------
# Installing LunarVim shim
# make: Entering directory '/home/vscode/.local/share/lunarvim/lvim'
# starting LunarVim bin-installer
# bash ./utils/installer/install_bin.sh
# You can start LunarVim by running: /home/vscode/.local/bin/lvim
# make: Leaving directory '/home/vscode/.local/share/lunarvim/lvim'
# Preparing Lazy setup
# Initializing first time setup
# Lazy setup complete
# --------------------------------------------------------------------------------
# Verifying core plugins
# Verification complete!
# --------------------------------------------------------------------------------

# --------------------------------------------------------------------------------
# Thank you for installing LunarVim!!
# You can start it by running: /home/vscode/.local/bin/lvim
# Do not forget to use a font with glyphs (icons) support [https://github.com/ryanoasis/nerd-fonts]