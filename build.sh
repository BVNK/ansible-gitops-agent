#!/bin/bash
export IMAGE_NAME="philipstaffordwood/kubular-ansible-agent:latest"
docker build . -t $IMAGE_NAME
docker push $IMAGE_NAME