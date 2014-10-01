#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

# set vi to default editor
sudo update-alternatives --set editor /usr/bin/vim.basic

popd
