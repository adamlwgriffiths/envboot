#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

./chromium/install.sh
./chromium/base.sh

./iterm2/install.sh

./sublime_text_2/install.sh

./adium/install.sh

popd

