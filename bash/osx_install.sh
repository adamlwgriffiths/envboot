#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc.bak
fi
cp ./.bashrc ~/.bashrc
chmod +x ~/.bashrc

# link .bash_profile to .bashrc
if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile.bak
fi
ln -s ~/.bashrc ~/.bash_profile

mkdir -p ~/.bash_scripts

popd

