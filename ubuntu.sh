set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR

. ./bash/ubuntu_install.sh

. ./vim/ubuntu_install.sh

. ./git/ubuntu_install.sh

. ./anaconda/ubuntu_install.sh

. ./condawrapper/ubuntu_install.sh

. ./heroku/ubuntu_install.sh

. ./ruby/ubuntu_install.sh

. ./foreman/ubuntu_install.sh


if [[ $REQUIRES_RESTART -eq 1 ]]; then
	echo ""
	echo "One or more installations require a restart"
	echo "You should now restart your machine"
	echo ""
fi

export REQUIRES_RESTART=

popd

