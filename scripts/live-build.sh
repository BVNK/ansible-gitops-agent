#!/bin/bash
# This can be safely ignored
# it is a convenience script using [inotifywait]()
# to watch for changes to the Dockerfile and
# trigger a build.

# Requires inotifywait to be installed
# Should be run from base of repo:
# i.e. ./scripts/livebuild.sh

  echo watching 'Dockerfile' and running './build.sh && ./test.sh'
  inotifywait -q -m -e close_write ./Dockerfile |
  while read -r filename event; do
    ./build.sh &&\
    ./test.sh     
  done

