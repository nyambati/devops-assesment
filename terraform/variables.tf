variable "region" {}
variable "profile" {}
variable "instance_type" {}
variable "ssh_key_name" {}
variable "ssh_public_key_path" {}

variable "ssh_origins" {
  type = "list"
}
