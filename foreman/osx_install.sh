#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

FILENAME="foreman.pkg"

wget -O "./$FILENAME" "http://assets.foreman.io/foreman/$FILENAME" -c

sudo installer -package "./$FILENAME" -target "/"

rm "./$FILENAME"

popd

