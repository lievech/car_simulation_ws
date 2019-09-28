#!/bin/bash
set -e  # exit on first error
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
REPO_DIR=$(dirname "$SCRIPT_DIR")
main()
{
    cd $REPO_DIR
    git submodule update --init --recursive
    sudo apt-get install -qq ccache
    echo "installing cppad....."
    $SCRIPT_DIR/ivrcscripts/installers/install_cppad.sh
    echo "installing ipopt......."
    $SCRIPT_DIR/ivrcscripts/installers/install_ipopt.sh
    echo "dependencies are installed successfully..............."
}


main
