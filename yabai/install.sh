#!/bin/sh

mkdir -p ${HOME}/.config/yabai
mkdir -p ${HOME}/.config/skhd

ln -s "./yabai" "${HOME}/.config/yabai/yabairc"
ln -s "./yabai" "${HOME}/.config/skhd/skhdrc"

exit 0
