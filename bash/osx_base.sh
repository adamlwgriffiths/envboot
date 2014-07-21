#!/bin/bash
set -e

if [ -d ~/.bash_scripts ]; then
    cp ./bash_scripts/library.sh ~/.bash_scripts
    chmod +x ~/.bash_scripts/library.sh
fi

