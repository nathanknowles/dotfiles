#!/bin/sh

echo "Installing Iterm Profle"
echo "$HOME/dotfiles/iterm/com.googlecode.iterm2.plist"
# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$HOME/dotfiles/iterm"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
exit 0
