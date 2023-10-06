variable "AWS_REGION" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "eks-cluster"
}

variable "kube_config" {
  type    = string
  default = "~/.kube/config"
}

variable "node_group_name" {
  default = "worker-group-1"
}

variable "AMI" {
  type = map(any)
  default = {
    us-east-1 = "ami-0261755bbcb8c4a84"
  }
}
variable "MYIP" {
  default = "192.168.232.138/24"
}

variable "instance_count" {
  default = 1
}

variable "VPC_NAME" {
  default = "App-VPC"
}

variable "Zone1" {
  default = "us-east-1a"
}

variable "Zone2" {
  default = "us-east-1b"
}

variable "Zone3" {
  default = "us-east-1c"
}

variable "VpcCIDR" {
  default = "172.21.0.0/16"
}

variable "PubSub1CIDR" {
  default = "172.21.1.0/24"
}

variable "PubSub2CIDR" {
  default = "172.21.2.0/24"
}

variable "PubSub3CIDR" {
  default = "172.21.3.0/24"
}

variable "PrivSub1CIDR" {
  default = "172.21.4.0/24"
}

variable "PrivSub2CIDR" {
  default = "172.21.5.0/24"
}

variable "PrivSub3CIDR" {
  default = "172.21.6.0/24"
}
