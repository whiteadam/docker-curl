#!/bin/sh
set -e

if
  command -v "$1" >& /dev/null
then
  exec "$@"
else
  exec curl "$@"
fi
