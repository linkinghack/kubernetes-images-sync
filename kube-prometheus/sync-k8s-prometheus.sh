## kube-state-metrics
docker pull k8s.gcr.io/kube-state-metrics/kube-state-metrics:v2.3.0;
docker tag k8s.gcr.io/kube-state-metrics/kube-state-metrics:v2.3.0 linkinghack/kube-state-metrics:v2.3.0;
docker push linkinghack/kube-state-metrics:v2.3.0;

## prometheus-operator
docker pull k8s.gcr.io/prometheus-adapter/prometheus-adapter:v0.9.1;
docker tag k8s.gcr.io/prometheus-adapter/prometheus-adapter:v0.9.1 linkinghack/prometheus-adapter:v0.9.1;
docker push linkinghack/prometheus-adapter:v0.9.1;

docker pull quay.io/prometheus-operator/prometheus-config-reloader:v0.54.0;
docker tag quay.io/prometheus-operator/prometheus-config-reloader:v0.54.0 linkinghack/prometheus-config-reloader:v0.54.0;
docker push linkinghack/prometheus-config-reloader:v0.54.0;
