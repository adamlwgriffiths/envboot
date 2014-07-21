#!/bin/bash

sudo apt-get -y install git

# configure
read -p "Enter your git display name: " USERNAME
read -p "Enter your git email address: " EMAIL
git config --global user.name "$USERNAME"
git config --global user.email "$EMAIL"

