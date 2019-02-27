#!/bin/bash
echo "**************************************"
echo "            TEST RUN"
echo "**************************************"
#
export IMAGE_NAME="philipstaffordwood/kubular-ansible-agent:latest"

export TERM="xterm"
echo Running in host directory: `pwd`
docker run \
    --rm \
    -v `pwd`:/src \
    -e TERM=$TERM \
    $IMAGE_NAME \
    bats -p src/tests/test_container.sh  
echo "STATUS CODE: $?"

echo
echo "**************************************"
echo 