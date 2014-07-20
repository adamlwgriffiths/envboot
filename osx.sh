#!/bin/bash
set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

. ./homebrew/osx_install.sh
. ./homebrew/base.sh

. ./bash/osx_install.sh

. ./chromium/osx_install.sh

. ./iterm2/osx_install.sh

. ./sublime_text_2/osx_install.sh

. ./adium/osx_install.sh

. ./virtual_box/osx_install.sh

if [[ $REQUIRES_RESTART -eq 1 ]]; then
	echo ""
	echo "One or more installations require a restart"
	echo "You should now restart your machine"
	echo ""
fi

export REQUIRES_RESTART=

popd

