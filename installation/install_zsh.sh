#!/usr/bin/env bash

# Install ZSH and verify installation by printing version
sudo apt-get -y install zsh
zsh --version

# Install Oh My ZSH to manage layout configuration
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Change ZSH to default shell (will prompt for password)
chsh -s /bin/zsh

