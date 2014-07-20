#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

FILENAME="Adium_1.5.10.dmg"
DMG="Adium 1.5.10"

wget -O "./$FILENAME" "https://sourceforge.net/projects/adium/files/$FILENAME/download" -c

hdiutil mount "$FILENAME"

sudo cp -R "/Volumes/$DMG/Adium.app" /Applications

hdiutil unmount "/Volumes/$DMG"

rm "./$FILENAME"

popd

