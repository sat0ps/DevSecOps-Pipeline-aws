terraform {
  required_version = ">= 1.4.0"
  required_providers {
    kubernetes = { source = "hashicorp/kubernetes", version = "~> 2.27" }
  }
}
provider "kubernetes" { config_path = "~/.kube/config" }
resource "kubernetes_namespace" "satops" { metadata { name = "satops" } }
