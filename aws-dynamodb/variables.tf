variable "aws_region" {}
variable "table_name" {}
variable "billing_mode" {}
variable "read_capacity" {}
variable "write_capacity" {}
variable "hash_key" {}
variable "hash_key_type" {}
variable "range_key" {}
variable "range_key_type" {}

variable "ttl_attribute" {}
variable "ttl_enabled" {}

variable "gsi_name" {}
variable "gsi_range_key" {}
variable "gsi_range_key_type" {}
variable "gsi_read_capacity" {}
variable "gsi_write_capacity" {}

variable "tags" {
  type = map(string)
}