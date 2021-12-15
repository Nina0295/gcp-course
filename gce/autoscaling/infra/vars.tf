variable "project_id" {
  type = string
  default = "Your account"
}

variable "region" {
  type = string
  default = "europe-west1"
}

variable "zone" {
  type = string
  default = "europe-west1-b"
}

variable "service_account_name" {
  type = string
  default = "service-account-example"
}

variable "vpc_name" {
  type = string
  default = "vpc-gcs"
}

variable "instance_app_name" {
  type = string
  default = "instance-app"
}

variable "vpc_subnet_cidr" {
  type = string
  default = "10.0.0.0/24"
}
