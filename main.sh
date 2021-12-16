#!/bin/bash

# Provide the 'images' array containing image names
source latest.sh

# kubernetes base images
for imageName in ${images[@]} ; do
    docker pull k8s.gcr.io/$imageName
    docker tag k8s.gcr.io/$imageName  linkinghack/$imageName
    docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD
    docker push linkinghack/$imageName
done

# addon images

## kube-state-metrics
docker pull k8s.gcr.io/kube-state-metrics/kube-state-metrics:v2.3.0;
docker tag k8s.gcr.io/kube-state-metrics/kube-state-metrics:v2.3.0 linkinghack/kube-state-metrics:v2.3.0;
docker push linkinghack/kube-state-metrics:v2.3.0;


## prometheus-operator
docker pull k8s.gcr.io/prometheus-adapter/prometheus-adapter:v0.9.1;
docker tag k8s.gcr.io/prometheus-adapter/prometheus-adapter:v0.9.1 linkinghack/prometheus-adapter:v0.9.1;
docker push linkinghack/prometheus-adapter:v0.9.1;