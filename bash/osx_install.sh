#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

# Add to ~. Makes DEL key work in OS-X python terminal.
cp ./.bashrc ~
mkdir -p ~/.bashrc_scripts

# link .bash_profile to .bashrc
ln -s ~/.bashrc ~/.bash_profile

popd

