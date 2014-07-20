#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# brew doctor must be run first
brew doctor

popd
