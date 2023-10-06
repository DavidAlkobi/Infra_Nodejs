module "kube" {
  source = "./.terraform/modules/kube-prometheus"
  kube-version = "36.2.0"
}