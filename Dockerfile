FROM ubuntu:18.04

RUN apt-get update -y &&\
    apt-get install -y bats

RUN apt-get update -y &&\
    apt-get install -y git

RUN apt-get update -y &&\
    apt-get install -y software-properties-common &&\
    apt-add-repository -y ppa:ansible/ansible &&\
    apt-get update -y &&\
    apt-get install -y ansible

RUN apt-get install -y webhook

RUN apt-get install -y iproute2

EXPOSE 9000