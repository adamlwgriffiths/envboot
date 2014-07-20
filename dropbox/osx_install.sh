#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

FILENAME="DropboxInstaller.dmg"
DMG="Dropbox Installer"

wget -O "./$FILENAME" "https://www.dropbox.com/download?src=index&plat=mac" -c

hdiutil mount "$FILENAME"

open "/Volumes/$DMG/Chromium.app"

hdiutil unmount "/Volumes/$DMG"

rm "./$FILENAME"

popd

