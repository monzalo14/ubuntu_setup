#!/usr/bin/env bash

sudo apt update
sudo apt -y upgrade

# Install necessary packages for curl, devtools, knitr and tidyverse
sudo apt -y install libcurl4-openssl-dev libxml2-dev

# Add repository GPG key
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

# Add repository to /etc/apt/sources.list
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'

# Update sources list and install R
sudo apt update
sudo apt install r-base

# Install required packages
sudo Rscript requirements.R

