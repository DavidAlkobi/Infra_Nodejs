terraform {
  backend "s3" {
    bucket = "terraform-state3321"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}
