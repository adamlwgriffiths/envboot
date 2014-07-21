#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

FILENAME="Anaconda-2.0.1-MacOSX-x86_64.sh"

wget -O "./$FILENAME" "http://09c8d0b2229f813c1b93-c95ac804525aac4b6dba79b00b39d1d3.r79.cf1.rackcdn.com/$FILENAME" -c

chmod +x "./$FILENAME"
"./$FILENAME"

rm "./$FILENAME"

# remove the crap shortcut
if [ -f ~/Desktop/Launcher.app ]; then
    rm "~/Desktop/Launcher.app"
fi

# copy in our bash script
if [ -d ~/.bashrc_scripts ]; then
    cp ./bashrc_scripts/anaconda.sh ~/.bashrc_scripts
    chmod +x ~/.bashrc_scripts/anaconda.sh
fi

popd

