#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# brew doctor must be run first
brew doctor

if [ -d ~/.bash_scripts ]; then
    cp ./bash_scripts/homebrew.sh ~/.bash_scripts
    chmod +x ~/.bash_scripts/homebrew.sh
fi

popd

