FROM ubuntu:18.04

RUN apt-get update -y &&\
    apt-get install -y bats

RUN apt-get install -y git