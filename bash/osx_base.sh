#!/bin/bash
set -e

if [ -d ~/.bashrc_scripts ]; then
    cp ./bashrc_scripts/library.sh ~/.bashrc_scripts
    chmod +x ~/.bashrc_scripts/library.sh
fi

