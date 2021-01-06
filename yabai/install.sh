#!/bin/sh

mkdir -p ${HOME}/.config/yabai
mkdir -p ${HOME}/.config/skhd

ln -s "./yabairc" "${HOME}/.config/yabai/yabairc"
ln -s "./skhdrc" "${HOME}/.config/skhd/skhdrc"

exit 0
