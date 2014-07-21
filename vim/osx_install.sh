#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi
cp ./.vimrc ~/.vimrc

popd

