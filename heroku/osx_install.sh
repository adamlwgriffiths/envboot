#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

wget -qO- https://toolbelt.heroku.com/install.sh | sh

/usr/local/heroku/bin/heroku login

if [ -d ~/.bash_scripts ]; then
    cp ./bash_scripts/heroku.sh ~/.bash_scripts
    chmod +x ~/.bash_scripts/heroku.sh
fi

popd

