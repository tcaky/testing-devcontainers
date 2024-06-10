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

# RUN mkdir /usr/share/fonts/MesloLGS
# COPY fonts/* /usr/share/fonts/MesloLGS/

RUN apk update

RUN apk add zsh-theme-powerlevel10k
y
# RUN apk add tmux neovim py-pip npm nodejs cargo ripgrep lazygit starship fontforge py3-configargparse


# Switch to non-root user
USER ${USERNAME}
RUN sudo mkdir -p ~/.local/share/zsh/plugins
RUN sudo ln -s /usr/share/zsh/plugins/powerlevel10k ~/.local/share/zsh/plugins/

