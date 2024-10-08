variable "gcp_region" {
  description = "Cloud region"
}
variable "gcp_project" {
  description = "Cloud GCP project"
}
variable "node_type" {
  description = "Machine type for nodes"
  default = "n2-standard-2"
}
variable "gcp_zones" {
  description = "List of availability zones"
  type = list(string)
  validation {
    condition     = length(var.gcp_zones) > 0
    error_message = "The GCP zones list cannot be empty."
  }

}
variable "gke_cluster" {
  description = "Name of your cluster  "
}
variable "numnodes" {
  description = "Number of nodes of the cluster"
  default = 3
}
variable "regional_k8s" {
  description = "Set this to true if you want regional cluster with a master per zone"
  default = false
}
variable "owner" {
  description = "Owner name to tag clusters"
}
# variable "service_account" {
#   description = "Service Account to be used as scope permissions"
# }
variable "default_gke" {
  description = "Set it to true if you want to speed up GKE cluster creation by creating a default NodePool"
  default = false
}
variable "default_network" {
  description = "Set it to true if you don't want to use the default network in GCP"
  default = false
}
variable "k8s_version" {
  description = "K8s version to deploy in the format 1.xx"
  default = "1.28"
}
variable "config_bucket" {
  description = "Cloud bucket to save config generated files"
  type = string
  default = null
}

variable "numclusters" {
  description = "Number of GKE clusters to deploy"
}

