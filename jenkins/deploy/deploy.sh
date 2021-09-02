#!/bin/bash

echo maven-app > /tmp/.auth 
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth 

scp -i /opt/prod /tmp/.auth prod-user@20.109.120.81:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh  prod-user@20.109.120.81:/tmp/publish.sh
ssh -i /opt/prod prod-user@20.109.120.81 /tmp/publish.sh
