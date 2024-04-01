#!/bin/sh

APP_ROOT="$(dirname "$(dirname "$(readlink -fm "$0")")")"

cd $APP_ROOT

echo '-> Full update...'
git switch main
git pull --all
git submodule update --remote --merge
echo '-> Done'
