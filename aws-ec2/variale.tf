variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

locals {
  environment = "dev"
  project = "lab-site"
  env_project = "${local.environment}-${local.project}"
}