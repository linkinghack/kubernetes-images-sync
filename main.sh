#!/bin/bash

# Provide the 'images' array containing image names
source latest.sh

docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASSWORD

# kubernetes base images
# for imageName in ${images[@]} ; do
#     docker pull k8s.gcr.io/$imageName
#     docker tag k8s.gcr.io/$imageName  linkinghack/$imageName
#     docker push linkinghack/$imageName
# done

# addon images

## kube-state-metrics
# docker pull k8s.gcr.io/kube-state-metrics/kube-state-metrics:v2.3.0;
# docker tag k8s.gcr.io/kube-state-metrics/kube-state-metrics:v2.3.0 linkinghack/kube-state-metrics:v2.3.0;
# docker push linkinghack/kube-state-metrics:v2.3.0;


## prometheus-operator
# docker pull k8s.gcr.io/prometheus-adapter/prometheus-adapter:v0.9.1;
# docker tag k8s.gcr.io/prometheus-adapter/prometheus-adapter:v0.9.1 linkinghack/prometheus-adapter:v0.9.1;
# docker push linkinghack/prometheus-adapter:v0.9.1;

## Knative Operator
docker pull gcr.io/knative-releases/knative.dev/operator/cmd/operator@sha256:70ca57b2beefa81144d8c01943b07d918ab381b7a64429e8d4b16cc377052675;
docker tag gcr.io/knative-releases/knative.dev/operator/cmd/operator@sha256:70ca57b2beefa81144d8c01943b07d918ab381b7a64429e8d4b16cc377052675 linkinghack/knative-operator:70ca57b;
docker push linkinghack/knative-operator:70ca57b;