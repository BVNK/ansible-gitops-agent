#!/bin/bash

# This test set depends on [bats](https://github.com/sstephenson/bats)


@test "we start red and go green - we have basic tdd infrastructure" {
  true  

}

@test "we are listening to port 9000 inside the container" {
    netstat -aon | grep 9000
}