#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

# set vi to default editor
sudo update-alternatives --set editor /usr/bin/vim.basic

if [ -d ~/.bash_scripts ]; then
    cp ./bash_scripts/ubuntu.sh ~/.bash_scripts
    chmod +x ~/.bash_scripts/ubuntu.sh
fi

popd
