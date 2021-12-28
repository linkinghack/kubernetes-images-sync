#!/bin/bash

docker pull quay.io/cilium/operator-generic:v1.9.9;
docker tag quay.io/cilium/operator-generic:v1.9.9 linkinghack/cilium-operator-generic:v1.9.9;
docker push linkinghack/cilium-operator-generic:v1.9.9;

docker pull quay.io/cilium/cilium:v1.9.9;
docker tag quay.io/cilium/cilium:v1.9.9 linkinghack/cilium:v1.9.9;
docker push linkinghack/cilium:v1.9.9;