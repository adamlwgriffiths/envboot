#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

# Add to ~. Makes DEL key work in OS-X python terminal.
if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc.bak
fi
cp ./.bashrc ~/.bashrc
mkdir -p ~/.bashrc_scripts

# link .bash_profile to .bashrc
if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile.bak
fi
ln -s ~/.bashrc ~/.bash_profile

popd

