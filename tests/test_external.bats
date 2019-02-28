#!/bin/bash

# This test set depends on [bats](https://github.com/sstephenson/bats)


@test "we start red and go green - we have basic tdd infrastructure" {
  true
}

@test "we can curl to port 9000 /hooks/hello-webhook and get HTTP 200 OK" {
    run curl -v http://localhost:9000/hooks/hello-webhook
    echo "status = ${status}"
    echo "output = ${output}"
    [[ "$output" =~ "200 OK" ]]
}

@test "we can see the hello.sh hook was executed from the logs" {
    run docker logs $CID
    echo "status = ${status}"
    echo "output = ${output}"
    [[ "$output" =~ "Started GET /hooks/hello-webhook" ]] 
    [[ "$output" =~ "hello-webhook got matched" ]] 
    [[ "$output" =~ "hello-webhook hook triggered successfully" ]]
    [[ "$output" =~ "command output: hello webhook" ]] 
}