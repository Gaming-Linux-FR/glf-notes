#!/bin/sh

APP_ROOT="$(dirname "$(dirname "$(readlink -fm "$0")")")"

cd $APP_ROOT

if [ -x /usr/bin/pacman ] ;then
  echo '-> Installing dependencies for Arch Linux...'
  sudo pacman -S --needed hugo git
  git pull --all
  git submodule update --init --recursive
  echo '-> Done'
  exit 0
fi

echo 'Please install manually:'
echo
echo '- Page hugo + git'
echo '- At root "git pull --all --recurse-submodule"'
echo
exit 1
