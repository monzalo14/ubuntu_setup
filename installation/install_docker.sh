#!/usr/bin/env bash

### Set up the Docker repository

# Remove older versions of docker, if they exist
sudo apt-get remove docker docker-engine docker.io containerd runc

# Update apt index
sudo apt-get -y update

# Install packages to allow apt to use a repository over HTTPS
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker official's GPG key and verify we have it
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

# Set up the Docker stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

### Install Docker engine CE
sudo apt-get -y update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io

### Test the Docker installation
sudo docker run hello-world

