module "argocd" {
  source  = "aigisuk/argocd/kubernetes"
  version = "0.2.7"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config" # path to your kubeconfig file
  }
}

