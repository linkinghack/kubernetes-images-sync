#!/bin/bash

## Knative Operator
docker pull gcr.io/knative-releases/knative.dev/operator/cmd/operator@sha256:70ca57b2beefa81144d8c01943b07d918ab381b7a64429e8d4b16cc377052675;
docker tag gcr.io/knative-releases/knative.dev/operator/cmd/operator@sha256:70ca57b2beefa81144d8c01943b07d918ab381b7a64429e8d4b16cc377052675 linkinghack/knative-operator:70ca57b;
docker push linkinghack/knative-operator:70ca57b;

## Knative Serving components
docker pull gcr.io/knative-releases/knative.dev/serving/cmd/activator@sha256:ba1485ded12049525afb9856c2fa10d613dbc2b2da90556116bf257f2128eaae;
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/activator@sha256:ba1485ded12049525afb9856c2fa10d613dbc2b2da90556116bf257f2128eaae linkinghack/knative-activator:ba1485;
docker push linkinghack/knative-activator:ba1485;

docker pull gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler@sha256:dca8258a46dd225b8a72dfe63e8971b23876458f6f64b4ad82792c4d6e470bdc;
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler@sha256:dca8258a46dd225b8a72dfe63e8971b23876458f6f64b4ad82792c4d6e470bdc linkinghack/knative-autoscaler:dca8258;
docker push linkinghack/knative-autoscaler:dca8258;

docker pull gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler-hpa@sha256:0077168c3e4f46d47259df985e7ce9ffb38e8fa0ed4bbfed198cc518dd65e849;
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler-hpa@sha256:0077168c3e4f46d47259df985e7ce9ffb38e8fa0ed4bbfed198cc518dd65e849 linkinghack/knative-autoscaler-hpa:0077168;
docker push linkinghack/knative-autoscaler-hpa:0077168;

docker pull gcr.io/knative-releases/knative.dev/serving/cmd/controller@sha256:2765feeaa3958827388e6f5119010ee08c0eec9ad7518bb38ac4b9a4355d87fb;
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/controller@sha256:2765feeaa3958827388e6f5119010ee08c0eec9ad7518bb38ac4b9a4355d87fb linkinghack/knative-controller:2765fee;
docker push linkinghack/knative-controller:2765fee;

docker pull gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping@sha256:25df5b854d28dac69c6293db4db50d8fa819c96ad2f2a30bdde6aad467de1b17;
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping@sha256:25df5b854d28dac69c6293db4db50d8fa819c96ad2f2a30bdde6aad467de1b17 linkinghack/knative-domain-mapping:25df5b8;
docker push linkinghack/knative-domain-mapping:25df5b8;

docker pull gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping-webhook@sha256:6ccc1f6ac07d27e97d96c502b4c6e928d5fb3abd165ae7670e94a57788416c75;
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/domain-mapping-webhook@sha256:6ccc1f6ac07d27e97d96c502b4c6e928d5fb3abd165ae7670e94a57788416c75 linkinghack/knative-domain-mapping-webhook:6ccc1f6;
docker push linkinghack/knative-domain-mapping-webhook:6ccc1f6;

docker pull gcr.io/knative-releases/knative.dev/net-istio/cmd/controller@sha256:0fa52d1a7fd82e491a983e2ea6f11c12eacb253ad38ae46842cd80080afffc06;
docker tag gcr.io/knative-releases/knative.dev/net-istio/cmd/controller@sha256:0fa52d1a7fd82e491a983e2ea6f11c12eacb253ad38ae46842cd80080afffc06 linkinghack/knative-net-istio-controller:0fa52d1;
docker push linkinghack/knative-net-istio-controller:0fa52d1;

docker pull gcr.io/knative-releases/knative.dev/net-istio/cmd/webhook@sha256:42e3ce96e92b1a54e5ff5e401e2e056e2351002d482ba3fd42f0b77de57e235d;
docker tag gcr.io/knative-releases/knative.dev/net-istio/cmd/webhook@sha256:42e3ce96e92b1a54e5ff5e401e2e056e2351002d482ba3fd42f0b77de57e235d linkinghack/knative-net-istio-webhook:42e3ce9;
docker push linkinghack/knative-net-istio-webhook:42e3ce9;

docker pull gcr.io/knative-releases/knative.dev/pkg/apiextensions/storageversion/cmd/migrate@sha256:757f5e599e08924a7ff176468145dc161670e5e510b04874d79bf7d0a355e450;
docker tag gcr.io/knative-releases/knative.dev/pkg/apiextensions/storageversion/cmd/migrate@sha256:757f5e599e08924a7ff176468145dc161670e5e510b04874d79bf7d0a355e450 linkinghack/knative-migrate:757f5e5;
docker push linkinghack/knative-migrate:757f5e5;

docker pull gcr.io/knative-releases/knative.dev/serving/cmd/webhook@sha256:9f3c83def9d0d5de0e8e1d1f4c10f262e283fe12d21dcbb91de06b65d3bd08ad;
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/webhook@sha256:9f3c83def9d0d5de0e8e1d1f4c10f262e283fe12d21dcbb91de06b65d3bd08ad linkinghack/knative-webhook:9f3c83d;
docker push linkinghack/knative-webhook:9f3c83d;

docker pull gcr.io/knative-releases/knative.dev/serving/cmd/queue@sha256:48a1753de35ecbe060611aea9e95751e3e4851183c4373e65aa1b9410ea6e263;
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/queue@sha256:48a1753de35ecbe060611aea9e95751e3e4851183c4373e65aa1b9410ea6e263 linkinghack/knative-queue:48a1753;
docker push linkinghack/knative-queue:48a1753;

docker pull gcr.io/knative-releases/knative.dev/serving/cmd/default-domain@sha256:f04cd06536e321f8f564ac193919a68e4908d0a709090a94f60333125119e946;
docker tag gcr.io/knative-releases/knative.dev/serving/cmd/default-domain@sha256:f04cd06536e321f8f564ac193919a68e4908d0a709090a94f60333125119e946 linkinghack/knative-default-domain:f04cd06;
docker push linkinghack/knative-default-domain:f04cd06;
