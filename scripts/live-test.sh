#!/bin/bash
# This can be safely ignored
# it is a convenience script using [inotifywait]()
# to watch for changes to the test runner and test files and
# trigger a test.

# Requires inotifywait to be installed
# Should be run from base of repo:
# i.e. ./scripts/live-test.sh

  echo watching 'test.sh, tests/test_container.bats and tests/test_webhooks' and running './test.sh'
  inotifywait -q -m -e close_write ./test.sh ./tests/test_container.bats ./tests/test_webhook.bats ./tests/test_external.bats ./tests/webhook/hooks.json |
  while read -r filename event; do
    ./test.sh     
  done

