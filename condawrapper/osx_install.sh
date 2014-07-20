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

if [ -d ~/.bashrc_scripts ]; then
    cp ./bashrc_scripts/condawrapper.sh ~/.bashrc_scripts
    chmod +x ~/.bashrc_scripts/condawrapper.sh
fi

popd

