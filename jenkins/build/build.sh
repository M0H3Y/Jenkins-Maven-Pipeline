#!/bin/bash

# COPY The New Jar File to The New Location 

cp -f java-app/target/*.jar jenkins/build/

echo "********************"
echo "Building Docker Images"
echo "********************"
cd jenkins/build/ && docker-compose build --no-cache 
