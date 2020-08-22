#!/bin/bash

# Provide the 'images' array containing image names
source latest.sh

for imageName in ${images[@]} ; do
    docker pull k8s.gcr.io/$imageName
    docker tag k8s.gcr.io/$imageName  linkinghack/$imageName
    docker push -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD linkinghack/$imageName
done