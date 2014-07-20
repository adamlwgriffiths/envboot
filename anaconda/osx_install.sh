#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

FILENAME="Anaconda-2.0.1-MacOSX-x86_64.sh"

wget -O "./$FILENAME" "http://09c8d0b2229f813c1b93-c95ac804525aac4b6dba79b00b39d1d3.r79.cf1.rackcdn.com/Anaconda-2.0.1-MacOSX-x86_64.sh" -c

chmod +x "./$FILENAME"
"./$FILENAME"

rm "./$FILENAME"

# copy in our bash script
if [ -d ~/.bashrc_scripts ]; then
    cp ./bashrc_scripts/anaconda.sh ~/.bashrc_scripts
fi

popd

