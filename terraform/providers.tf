provider "aws" {
  region = var.AWS_REGION
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config" # path to your kubeconfig file
  }
}

provider "kubernetes" {
  config_path = pathexpand(var.kube_config)
}