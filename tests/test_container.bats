#!/bin/bash

# This test set depends on [bats](https://github.com/sstephenson/bats)


@test "we start red and go green - we have basic tdd infrastructure" {
  #false
  true
}

@test "we have git" {
    which git
}


@test "we have ansible" {
    which ansible
}

@test "we have webhook" {
    which webhook
}
