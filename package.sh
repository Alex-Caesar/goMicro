#!/bin/bash

# This file contains bash(linux) native workflow framework for handling
# Docker, Kubernetes, Golang, etc.
# to bootstrap language agnostic development


alias d-build="docker build . -t $REPO$APP_NAME:$TAG"
alias d-run="docker run -d -p $HOST_PORT:$CONTAINER_PORT -h $CONTAIN_NAME $IMAGE_NAME"


# alias for cleaning all alias