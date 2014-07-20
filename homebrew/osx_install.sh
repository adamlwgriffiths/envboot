#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# brew doctor must be run first
brew doctor

if [ -d ~/.bashrc_scripts ]; then
    cp ./bashrc_scripts/homebrew.sh ~/.bashrc_scripts
    chmod +x ~/.bashrc_scripts/homebrew.sh
fi

popd

