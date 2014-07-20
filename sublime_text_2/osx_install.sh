#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

FILENAME="Sublime Text 2.0.2.dmg"
DMG="Sublime Text 2"

wget -O "./$FILENAME" "http://c758482.r82.cf2.rackcdn.com/$FILENAME" -c

hdiutil mount "$FILENAME"

sudo cp -R "/Volumes/$DMG/Sublime Text 2.app" /Applications

hdiutil unmount "/Volumes/$DMG"

rm "./$FILENAME"

popd

