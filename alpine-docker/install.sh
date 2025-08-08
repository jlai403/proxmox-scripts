#!/bin/bash
# This script sets ups the Alpine Docker image.

# Update & upgrade alpine
apk update
apk upgrade

# Install common packages
apk add shadow #required for changing shell via chsh
apk add zsh
apk add git
apk add neovim

# Change default shell to zsh 
chsh -s $(which zsh)

# Install and setup Docker
apk add docker
apk add docker-cli-compose

rc-update add docker default
service docker start
addgroup root docker

mkdir -p ~/.docker/completions
docker completion zsh > ~/.docker/completions/_docker

cat <<"EOT" >> ~/.zshrc
FPATH="$HOME/.docker/completions:$FPATH"
autoload -Uz compinit
compinit
EOT