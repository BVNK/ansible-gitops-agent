#!/bin/bash
echo "**************************************"
echo "            RUN"
echo "**************************************"
#
export IMAGE_NAME="philipstaffordwood/kubular-ansible-agent:latest"

export TERM="xterm"
echo Running in host directory: `pwd`
CID=`docker run \
    -d \
    --rm \
    -v $PWD:/src \
    -e TERM=$TERM \
    -p 9000:9000 \
    $IMAGE_NAME \
    webhook -verbose -hooks=/src/tests/webhook/hooks.json -hotreload `
