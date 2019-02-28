#!/bin/bash

# This test set depends on [bats](https://github.com/sstephenson/bats)


@test "we start red and go green - we have basic tdd infrastructure" {
  true  

}

@test "we have a running process" {
  run bash -c 'ps -ef | grep webhook'
    echo "status = ${status}"
    echo "output = ${output}"
   [[ "$output" =~ "webhook -verbose -hooks=/src/tests/webhook/hooks.json -hotreload" ]]

}

@test "we are listening to port 9000 inside the container" {
  run bash -c 'ss --tcp --listening --numeric --processes | grep 9000'
    echo "status = ${status}"
    echo "output = ${output}"
   [[ "$output" =~ "webhook" ]]

}