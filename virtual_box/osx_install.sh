#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

VERSION="4.3.14"
BUILD="95030"
FILENAME="VirtualBox-$VERSION-$BUILD-OSX.dmg"
DMG="VirtualBox"

wget -O "./$FILENAME" "http://download.virtualbox.org/virtualbox/$VERSION/$FILENAME" -c

hdiutil mount "$FILENAME"

sudo installer -package "/Volumes/$DMG/VirtualBox.pkg" -target "/"

hdiutil unmount "/Volumes/$DMG"

rm "./$FILENAME"

#
# extension pack
#
FILENAME="Oracle_VM_VirtualBox_Extension_Pack-$VERSION-$BUILD.vbox-extpack"

wget -O "./$FILENAME" "http://download.virtualbox.org/virtualbox/$VERSION/$FILENAME" -c

VBoxManage extpack install "./$FILENAME"

rm "./$FILENAME"

popd

