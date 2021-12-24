#!/bin/bash

### Knative Evnenting Components
docker pull gcr.io/knative-releases/knative.dev/eventing/cmd/controller@sha256:14e565af0a741a0e34b139d9661555189972af8d53e837305f711a3f9025e188;
docker tag gcr.io/knative-releases/knative.dev/eventing/cmd/controller@sha256:14e565af0a741a0e34b139d9661555189972af8d53e837305f711a3f9025e188 linkinghack/knative-eventing-controller:14e565a;
docker push linkinghack/knative-eventing-controller:14e565a;

docker pull gcr.io/knative-releases/knative.dev/eventing/cmd/apiserver_receive_adapter@sha256:afb65789e9c92414ef8885bb71ec1afd7dffe1730729a45fbf918356bd6ed7a1;
docker tag gcr.io/knative-releases/knative.dev/eventing/cmd/apiserver_receive_adapter@sha256:afb65789e9c92414ef8885bb71ec1afd7dffe1730729a45fbf918356bd6ed7a1 linkinghack/knative-eventing-apiserver_receive_adapter:afb6578;
docker push linkinghack/knative-eventing-apiserver_receive_adapter:afb6578;

docker pull gcr.io/knative-releases/knative.dev/eventing/cmd/mtping@sha256:6a78d2df8eec44bb983ae39952097670fad0556afc6d069fc88fd8347a014698;
docker tag gcr.io/knative-releases/knative.dev/eventing/cmd/mtping@sha256:6a78d2df8eec44bb983ae39952097670fad0556afc6d069fc88fd8347a014698 linkinghack/knative-eventing-mtping:6a78d2d;
docker push linkinghack/knative-eventing-mtping:6a78d2d;

docker pull gcr.io/knative-releases/knative.dev/eventing/cmd/webhook@sha256:9ca667c4d9c9c02b1549aee6d3fc13f40e8e54322260525665b029983c373ece;
docker tag gcr.io/knative-releases/knative.dev/eventing/cmd/webhook@sha256:9ca667c4d9c9c02b1549aee6d3fc13f40e8e54322260525665b029983c373ece linkinghack/knative-eventing-webhook:9ca667c;
docker push linkinghack/knative-eventing-webhook:9ca667c;
