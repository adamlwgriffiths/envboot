#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

wget -qO- https://toolbelt.heroku.com/install.sh | sh

/usr/local/heroku/bin/heroku login

if [ -d ~/.bashrc_scripts ]; then
    cp ./bashrc_scripts/heroku.sh ~/.bashrc_scripts
    chmod +x ~/.bashrc_scripts/heroku.sh
fi

popd

