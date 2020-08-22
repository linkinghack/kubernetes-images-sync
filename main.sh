#!/bin/bash

# Provide the 'images' array containing image names
source latest.sh

for imageName in ${images[@]} ; do
    docker pull k8s.gcr.io/$imageName
    docker tag k8s.gcr.io/$imageName  linkinghack/$imageName
    docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD
    docker push linkinghack/$imageName
done