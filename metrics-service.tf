resource "helm_release" "metrics_server" {
  name       = "metrics-server"
  repository = "https://kubernetes-sigs.github.io/metrics-server/"
  chart      = "metrics-server"
  version    = "0.6.1"

  set {
    name  = "replicas"
    value = "1"
  }

  set {
    name  = "args"
    value = "--kubelet-insecure-tls"
  }
}