output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane."
  value       = module.eks.cluster_security_group_id
}

# output "kubeconfig" {
#   description = "kubectl config as created by the module."
#   value       = module.eks.kubeconfig
# }

output "region" {
  description = "AWS_region"
  value       = var.AWS_REGION

}