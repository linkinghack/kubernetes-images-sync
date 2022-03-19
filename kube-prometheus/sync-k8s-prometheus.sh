## kube-state-metrics
docker pull k8s.gcr.io/kube-state-metrics/kube-state-metrics:v2.4.2;
docker tag k8s.gcr.io/kube-state-metrics/kube-state-metrics:v2.4.2 linkinghack/kube-state-metrics:v2.4.2;
docker push linkinghack/kube-state-metrics:v2.4.2;

## prometheus-operator
docker pull k8s.gcr.io/prometheus-adapter/prometheus-adapter:v0.9.1;
docker tag k8s.gcr.io/prometheus-adapter/prometheus-adapter:v0.9.1 linkinghack/prometheus-adapter:v0.9.1;
docker push linkinghack/prometheus-adapter:v0.9.1;

docker pull quay.io/prometheus-operator/prometheus-config-reloader:v0.55.0;
docker tag quay.io/prometheus-operator/prometheus-config-reloader:v0.55.0 linkinghack/prometheus-config-reloader:v0.55.0;
docker push linkinghack/prometheus-config-reloader:v0.55.0;

docker pull quay.io/prometheus-operator/prometheus-operator:v0.55.0
docker tag quay.io/prometheus-operator/prometheus-operator:v0.55.0 linkinghack/prometheus-operator:v0.55.0
docker push linkinghack/prometheus-operator:v0.55.0;

docker pull quay.io/brancz/kube-rbac-proxy:v0.11.0;
docker tag quay.io/brancz/kube-rbac-proxy:v0.11.0 linkinghack/kube-rbac-proxy:v0.11.0;
docker push linkinghack/kube-rbac-proxy:v0.11.0;

docker pull quay.io/prometheus/alertmanager:v0.23.0
docker tag quay.io/prometheus/alertmanager:v0.23.0 linkinghack/alertmanager:v0.23.0
docker push linkinghack/alertmanager:v0.23.0

docker pull quay.io/prometheus/blackbox-exporter:v0.19.0
docker tag quay.io/prometheus/blackbox-exporter:v0.19.0 linkinghack/blackbox-exporter:v0.19.0
docker push linkinghack/blackbox-exporter:v0.19.0

docker pull quay.io/prometheus/node-exporter:v1.3.1
docker tag quay.io/prometheus/node-exporter:v1.3.1 linkinghack/node-exporter:v1.3.1
docker push linkinghack/node-exporter:v1.3.1

docker pull quay.io/prometheus/prometheus:v2.33.5
docker tag quay.io/prometheus/prometheus:v2.33.5 linkinghack/prometheus:v2.33.5
docker push linkinghack/prometheus:v2.33.5