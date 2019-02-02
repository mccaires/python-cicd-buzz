#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS
TAG="$TRAVIS_BUILD_NUMBER"

docker build -t devfiap/mccaires:$TAG .
docker push devfiap/mccaires
