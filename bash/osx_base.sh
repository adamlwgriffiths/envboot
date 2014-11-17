#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

if [ -d ~/.bash_scripts ]; then
    cp ./bash_scripts/library.sh ~/.bash_scripts
    chmod +x ~/.bash_scripts/library.sh

    cp ./bash_scripts/color.sh ~/.bash_scripts
    chmod +x ~/.bash_scripts/color.sh
fi

popd
