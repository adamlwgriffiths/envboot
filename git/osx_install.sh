#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

brew install git

# configure
read -p "Enter your git display name: " USERNAME
read -p "Enter your git email address: " EMAIL
git config --global user.name "$USERNAME"
git config --global user.email "$EMAIL"

popd

