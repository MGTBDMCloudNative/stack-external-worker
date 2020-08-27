variable "scw_access_key" {
}

variable "scw_secret_key" {
}

variable "scw_organization_id" {
}

variable "scw_region" {
  description = "Scaleway region to launch servers."
  default     = "fr-par"
}

locals {
  scw_zone = "${var.scw_region}-1"
}

provider "scaleway" {
  access_key      = var.scw_access_key
  secret_key      = var.scw_secret_key
  region          = var.scw_region
  zone            = local.scw_zone
  organization_id = var.scw_organization_id
}

variable "build_team_name" {
}

variable "build_pipeline_name" {
}

variable "project" {
}

variable "env" {
}

variable "customer" {
}
