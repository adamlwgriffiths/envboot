#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

mkdir -p ~/Workspace
if [ ! -d ~/Workspace/condawrapper ]; then
    pushd ~/Workspace
    cd ~/Workspace
    git clone https://github.com/adamlwgriffiths/condawrapper.git
    popd
fi

if [ -d ~/.bash_scripts ]; then
    cp ./bash_scripts/condawrapper.sh ~/.bash_scripts
    chmod +x ~/.bash_scripts/condawrapper.sh
fi

popd

