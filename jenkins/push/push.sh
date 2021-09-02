#!/bin/bash

IMAGE="maven-app"
echo "***************"
echo "Pushing Image"
echo "***************"

echo "*** Logging In To Docker Hub ***" 
docker login -u mohey -p $PASS 

echo "*** Tagging The Image ***"

docker tag $IMAGE:$BUILD_TAG mohey/$IMAGE:$BUILD_TAG
echo "*** Pushing The Image ***"
docker push mohey/$IMAGE:$BUILD_TAG

