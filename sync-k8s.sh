#!/bin/bash

# Provide the 'images' array containing image names
# source latest.sh
source versions/v1.23.1.sh

## kubernetes base images
for imageName in ${images[@]} ; do
    docker pull k8s.gcr.io/$imageName
    docker tag k8s.gcr.io/$imageName  linkinghack/$imageName
    docker push linkinghack/$imageName
done

if [ -n $COREDNS_IMG ]
then
    docker pull k8s.gcr.io/coredns/$COREDNS_IMG;
    docker tag k8s.gcr.io/coredns/$COREDNS_IMG linkinghack/$COREDNS_IMG;
    docker push linkinghack/$COREDNS_IMG;
fi