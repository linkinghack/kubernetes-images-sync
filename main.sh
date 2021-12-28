#!/bin/bash

# Provide the 'images' array containing image names
source latest.sh

docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD

## sync k8s basic components images
# bash sync-k8s-basic.sh


## sync prometheus images
# bash kube-prometheus/sync-k8s-prometheus.sh

# sync knative images
# bash knative/sync-eventing.sh
# bash knative/sync-serving.sh
# bash knative/sync-example.sh

# quay.io
bash other-tools/cilium.sh