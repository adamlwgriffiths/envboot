#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

FILENAME="iTerm2_v2_0.zip"
ZIP_DIR="iterm2"

wget -O "$FILENAME" "http://www.iterm2.com/downloads/stable/$FILENAME" -c

unzip -d "$ZIP_DIR" "$FILENAME"
cd "$ZIP_DIR"
sudo cp -R "iTerm.app" /Applications
cd ..
rm -rf "./$ZIP_DIR" "./$FILENAME"

popd

