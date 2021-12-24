#!/bin/bash

## kubernetes base images
for imageName in ${images[@]} ; do
    docker pull k8s.gcr.io/$imageName
    docker tag k8s.gcr.io/$imageName  linkinghack/$imageName
    docker push linkinghack/$imageName
done
