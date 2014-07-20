#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

FILENAME="ChromiumOSX_35.0.1916.153.dmg"
DMG="Chromium OS X 35.0.1916.153"

wget -O "./$FILENAME" "http://sourceforge.net/projects/osxportableapps/files/Chromium/$FILENAME/download" -c

hdiutil mount "$FILENAME"

sudo cp -R "/Volumes/$DMG/Chromium.app" /Applications

hdiutil unmount "/Volumes/$DMG"

rm "./$FILENAME"

popd

