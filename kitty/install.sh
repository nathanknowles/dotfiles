#!/bin/sh

mkdir -p ${HOME}/.config/kitty

ln -s "./kitty.conf" "${HOME}/.config/kitty/."
ln -s "./theme.conf" "${HOME}/.config/kitty/."

exit 0
