FROM mcr.microsoft.com/devcontainers/base:alpine-3.20 AS lunarvim_base

# [Option] Install zsh
ARG INSTALL_ZSH="true"
# [Option] Upgrade OS packages to their latest versions
ARG UPGRADE_PACKAGES="false"
# [Option] Enable non-root Docker access in container
# ARG ENABLE_NONROOT_DOCKER="true"

# Install needed packages and setup non-root user. Use a separate RUN statement to add your own dependencies.
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# These are executing as root, so no `sudo` needed.
RUN apk update

RUN apk add zsh-theme-powerlevel10k 

# adjust timezone
RUN apk add tzdata
RUN ln -s /usr/share/zoneinfo/America/Toronto /etc/localtime


RUN apk add tmux neovim 
# lazygit ripgrep alpine-sdk

# RUN apk add py-pip npm nodejs cargo ripgrep lazygit starship fontforge py3-configargparse


# Switch to non-root user
USER ${USERNAME}
RUN sudo mkdir -p ~/.local/share/zsh/plugins
RUN sudo ln -s /usr/share/zsh/plugins/powerlevel10k ~/.local/share/zsh/plugins/


RUN sudo mkdir -p ~/.local/share/nvim
RUN sudo mkdir -p ~/.local/state
# RUN git clone https://github.com/LazyVim/starter ~/.config/nvim
# RUN rm -rf ~/.config/nvim/.git



RUN sudo mkdir -p ~/.fonts
COPY ./fonts/*.ttf /tmp/fonts/
# RUN sudo cp /tmp/fonts/*.ttf ~/.fonts/
RUN sudo cp /tmp/fonts/0xProtoNerdFontMono-Regular.ttf ~/.fonts/0xProtoNerdFontMono-Regular.ttf
RUN sudo cp '/tmp/fonts/MesloLGS NF Regular.ttf' '~/.fonts/MesloLGS NF Regular.ttf'
RUN fc-cache -fv

COPY ./extras/.p10k.zsh /tmp/extras/
RUN sudo cp /tmp/extras/.p10k.zsh ~/.p10k.zsh
RUN sudo cp /tmp/extras/.zlogin ~/.zlogin
RUN sudo cp /tmp/extras/.zprofile ~/.zprofile
RUN sudo cp /tmp/extras/.zshenv ~/.zshenv
RUN sudo cp /tmp/extras/.zshrc ~/.zshrc


