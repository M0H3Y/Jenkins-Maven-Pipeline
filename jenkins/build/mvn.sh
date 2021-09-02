#!/bin/bash

echo "******************"
echo "Building Jar File"
echo "******************"

WORKSPACE=/home/mohey/jenkins/jenkins_home/workspace/pipeline-maven
docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.5.4-alpine "$@" 

