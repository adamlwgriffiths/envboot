#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

mkdir -p ~/.bash_scripts

if [ -f ~/.bashrc ]; then
    # don't nuke existing backups
    if [ ! -f ~/.bashrc.bak ]; then
        mv ~/.bashrc ~/.bashrc.bak
    fi
    if [ ! -f ~/.bash_scripts/bashrc.sh ]; then
        cp ~/.bashrc ~/.bash_scripts/bashrc.sh
        chmod +x ~/.bash_scripts/bashrc.sh
    fi
fi
cp ./.bashrc ~/.bashrc
chmod +x ~/.bashrc

# link .bash_profile to .bashrc
if [ -f ~/.bash_profile ]; then
    # don't nuke existing backups
    if [ ! -f ~/.bash_profile.bak ]; then
        mv ~/.bash_profile ~/.bash_profile.bak
    fi
fi
ln -s ~/.bashrc ~/.bash_profile


popd

