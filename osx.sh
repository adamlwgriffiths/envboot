#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

./homebrew/osx_install.sh
./homebrew/base.sh

./chromium/osx_install.sh

./iterm2/osx_install.sh

./sublime_text_2/osx_install.sh

./adium/osx_install.sh

./virtual_box/osx_install.sh

popd

