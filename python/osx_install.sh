#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

# Add to ~. Makes DEL key work in OS-X python terminal.
cp ./.pystartup ~

popd

