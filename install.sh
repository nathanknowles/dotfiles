#!/usr/bin/env bash
#
# Run all dotfiles installers.

set -e

cd "$(dirname $0)"

echo $PWD
sh -c homebrew/install_brew.sh
# Run Homebrew through the Brewfile
echo "› brew bundle"
brew bundle

# find the installers and run them iteratively
find . -name install.sh | while read installer ; do sh -c "${installer}" ; done
