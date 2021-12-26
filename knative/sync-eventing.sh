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

## Kafka Controller
docker pull gcr.io/knative-releases/knative.dev/eventing-kafka-broker/control-plane/cmd/kafka-controller@sha256:0fae50de7985782375fa3dc5eba694bf8e1914a66677e4f89ebf7fd1ebdff4e7;
docker tag gcr.io/knative-releases/knative.dev/eventing-kafka-broker/control-plane/cmd/kafka-controller@sha256:0fae50de7985782375fa3dc5eba694bf8e1914a66677e4f89ebf7fd1ebdff4e7 linkinghack/knative-eventing-kafka-controller:0fae50d;
docker push linkinghack/knative-eventing-kafka-controller:0fae50d;

docker pull gcr.io/knative-releases/knative.dev/eventing-kafka-broker/control-plane/cmd/webhook-kafka@sha256:4deb03284e29705cb5b6345ec4f47cdc3a291cc94a1d3008ae5ae5293b2cc78c;
docker tag gcr.io/knative-releases/knative.dev/eventing-kafka-broker/control-plane/cmd/webhook-kafka@sha256:4deb03284e29705cb5b6345ec4f47cdc3a291cc94a1d3008ae5ae5293b2cc78c linkinghack/knative-eventing-webhook-kafka:4deb032;
docker push linkinghack/knative-eventing-webhook-kafka:4deb032;

## Kafka Broker Dataplane
docker pull gcr.io/knative-releases/knative-kafka-broker-dispatcher:devel;
docker tag gcr.io/knative-releases/knative-kafka-broker-dispatcher:devel linkinghack/knative-kafka-broker-dispatcher:devel;
docker push linkinghack/knative-kafka-broker-dispatcher:devel;

docker pull gcr.io/knative-releases/knative-kafka-broker-receiver:devel;
docker tag gcr.io/knative-releases/knative-kafka-broker-receiver:devel linkinghack/knative-kafka-broker-receiver:devel;
docker push linkinghack/knative-kafka-broker-receiver:devel;

## Kafka channel
docker pull gcr.io/knative-nightly/knative.dev/eventing-kafka/cmd/channel/consolidated/controller@sha256:897fc3453d6d42be27d0ef0d90cdf40e0fcdc014cb1e3e3ddf344bb42d9721ce;
docker tag gcr.io/knative-nightly/knative.dev/eventing-kafka/cmd/channel/consolidated/controller@sha256:897fc3453d6d42be27d0ef0d90cdf40e0fcdc014cb1e3e3ddf344bb42d9721ce linkinghack/knative-eventing-kafka-channel-consollidated-controller:897fc34;
docker push linkinghack/knative-eventing-kafka-channel-consollidated-controller:897fc34;

docker pull gcr.io/knative-nightly/knative.dev/eventing-kafka/cmd/webhook@sha256:8babb6d94583183ffe4e947e755eb3a0da74ebb83e21e0fe1ece5d366576c9ab;
docker tag gcr.io/knative-nightly/knative.dev/eventing-kafka/cmd/webhook@sha256:8babb6d94583183ffe4e947e755eb3a0da74ebb83e21e0fe1ece5d366576c9ab linkinghack/knative-eventing-kafka-webhook:8babb6d;
docker push linkinghack/knative-eventing-kafka-webhook:8babb6d;

docker pull gcr.io/knative-nightly/knative.dev/eventing-kafka/cmd/channel/distributed/controller@sha256:2d5fa38022443abffafb2693e397597f0f0700ac5c03e0a5d728122ad819bd29;
docker tag gcr.io/knative-nightly/knative.dev/eventing-kafka/cmd/channel/distributed/controller@sha256:2d5fa38022443abffafb2693e397597f0f0700ac5c03e0a5d728122ad819bd29 linkinghack/knative-eventing-kafka-channel-distributed-controller:2d5fa38;
docker push linkinghack/knative-eventing-kafka-channel-distributed-controller:2d5fa38;

## Inmemory Channel
docker pull gcr.io/knative-releases/knative.dev/eventing/cmd/in_memory/channel_dispatcher@sha256:f68e7b2f99b590e60f034d91b771eef02ff9303da749da4aec389f4c8286d903;
docker tag gcr.io/knative-releases/knative.dev/eventing/cmd/in_memory/channel_dispatcher@sha256:f68e7b2f99b590e60f034d91b771eef02ff9303da749da4aec389f4c8286d903 linkinghack/knative-eventing-inmemory-channel-dispatcher:f68e7b2;
docker push linkinghack/knative-eventing-inmemory-channel-dispatcher:f68e7b2;

docker pull gcr.io/knative-releases/knative.dev/eventing/cmd/in_memory/channel_controller@sha256:4fe048c1454e129dda9b32abac4da7bfdc7ca1b53316169e1748873095f5f565;
docker tag gcr.io/knative-releases/knative.dev/eventing/cmd/in_memory/channel_controller@sha256:4fe048c1454e129dda9b32abac4da7bfdc7ca1b53316169e1748873095f5f565 linkinghack/knative-eventing-inmemory-channel-controller:4fe048c;
docker push linkinghack/knative-eventing-inmemory-channel-controller:4fe048c;
