#!/bin/bash

## Example apps in Knative Docs
docker pull gcr.io/knative-releases/knative.dev/eventing/cmd/event_display;
docker tag gcr.io/knative-releases/knative.dev/eventing/cmd/event_display linkinghack/knative-eventing-event_display:latest;
docker push linkinghack/knative-eventing-event_display:latest;

