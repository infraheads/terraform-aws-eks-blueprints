variable "helm_config" {
  description = "cert-manager Helm chart configuration"
  type        = any
  default     = {}
}

variable "manage_via_gitops" {
  description = "Determines if the add-on should be managed via GitOps."
  type        = bool
  default     = false
}

variable "irsa_policies" {
  description = "Additional IAM policies used for the add-on service account."
  type        = list(string)
  default     = []
}

variable "domain_names" {
  description = "Domain names of the Route53 hosted zone to use with cert-manager."
  type        = list(string)
  default     = []
}

variable "install_acme_issuers" {
  description = "Install ACME Cluster Issuers."
  type        = bool
  default     = true
}

variable "email" {
  description = "Email address for expiration emails from ACME."
  type        = string
  default     = ""
}

variable "addon_context" {
  description = "Input configuration for the addon"
  type = object({
    aws_caller_identity_account_id = string
    aws_caller_identity_arn        = string
    aws_eks_cluster_endpoint       = string
    aws_partition_id               = string
    aws_region_name                = string
    eks_cluster_id                 = string
    eks_oidc_issuer_url            = string
    eks_oidc_provider_arn          = string
    tags                           = map(string)
    irsa_iam_role_path             = string
    irsa_iam_permissions_boundary  = string
  })
}

variable "kubernetes_svc_image_pull_secrets" {
  description = "list(string) of kubernetes imagePullSecrets"
  type        = list(string)
  default     = []
}
#! changings ------
variable "cluster_issuer_name" {
  description = "Name of cluster issuer release"
  type        = string
  default     = ""
}

variable "external_account_keyID" {
  description = "ID of the CA key that the External Account is bound to."
  type        = string
  default     = ""
}

variable "external_account_secret_ref_key" {
  description = "Secret Key Selector referencing a data item in a Kubernetes Secret which holds the symmetric MAC key of the External Account Binding."
  type        = string
  default     = ""
}

variable "external_account_secret_ref_name" {
  description = "Secret Key Selector referencing a data item in a Kubernetes Secret which holds the symmetric MAC key of the External Account Binding."
  type        = string
  default     = ""
}

variable "preferred_chain" {
  description = "Chain to use if the ACME server outputs multiple."
  type        = string
  default     = ""
}

variable "acme_server_url" {
  description = "The URL used to access the ACME server's 'directory' endpoint."
  type        = string
  default     = ""
}

variable "dns_region" {
  description = "DNS Region"
  type        = string
  default     = ""
}