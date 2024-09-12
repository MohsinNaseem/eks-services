resource "helm_release" "aws_load_balancer_controller" {
  name       = "aws-load-balancer-controller"
  repository = "https://aws.github.io/eks-charts"
  chart      = "aws-load-balancer-controller"
  namespace  = "kube-system"
  version    = "2.7.0"


  set {
    name  = "clusterName"
    value = "mohsin-eks-cluster"
  }

  set {
    name  = "region"
    value = "eu-north-1"
  }

  set {
    name  = "vpcId"
    value = "vpc-123456789"
  }

  set {
    name  = "serviceAccount.create"
    value = "true"
  }

  set {
    name  = "serviceAccount.name"
    value = "aws-load-balancer-controller"
  }
}
