#!/bin/sh

APP_ROOT="$(dirname "$(dirname "$(readlink -fm "$0")")")"

cd $APP_ROOT && hugo server --buildDrafts
