# variable "region" {
# description = "Region"
# type        = string
# default     = "us-west-2"
# }

variable "name" {
  description = "Name of the VPC and EKS Cluster"
  type        = string
  default     = "kafka-on-eks"
}

variable "eks_cluster_version" {
  description = "EKS Cluster version"
  type        = string
  default     = "1.27"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.1.0.0/16"
}

variable "enable_amazon_prometheus" {
  description = "Enable AWS Managed Prometheus service"
  type        = bool
  default     = true
}

variable "aws_auth_roles" {
  description = "additional aws auth roles"
  type = list(
    object(
      {
        rolearn  = string
        username = string
        groups = list(string
        )
      }
    )
  )
  default = []
  # example structure
  #  {
  #     rolearn  = "arn:aws:iam::12345678901:role/role1"
  #     username = "role1"
  #     groups   = ["system:masters"]
  #   }
}

variable "kms_key_admin_roles" {
  description = "list of role ARNs to add to the KMS policy"
  type        = list(string)
  default     = []

}
