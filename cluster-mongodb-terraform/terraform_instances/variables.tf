variable "public_key_path" {
description = "Path to the public SSH key you want to bake into the instance."
default     = "~/.ssh/id_rsa.pub"
}

variable "private_key_path" {
  description = "Path to the private SSH key, used to access the instance."
  default     = "~/.ssh/id_rsa"
}

variable "project" {
  description = "Movie_Booking"
  default     = "bamboo-mercury-335016"
}

variable "region" {
  description = "Region."
  default     = "us-east1"
}

variable "zones" {
  description = "Zones."
  default     = ["us-east1-b", "us-east1-c", "us-east1-d"]
}

variable "ssh_user" {
  description = "SSH user name to connect to your instance."
  default     = "nina_belova_1995"
}

variable "network" {
  description = "VPC name."
  type = string
  default = "default"
}

variable "subnet" {
  description = "Subnet where to host the cluster."
  type = string
  default = "default"
}

variable "mongodb_port" {
  description = "Port used by the mongodb cluster."
  type = number
  default = "27017"
}
