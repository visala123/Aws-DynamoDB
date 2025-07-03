resource "aws_dynamodb_table" "dynamodb_table" {
  name           = var.table_name
  billing_mode   = var.billing_mode
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.hash_key
  range_key      = var.range_key

  attribute {
    name = var.hash_key
    type = var.hash_key_type
  }

  attribute {
    name = var.range_key
    type = var.range_key_type
  }

  attribute {
    name = var.gsi_range_key
    type = var.gsi_range_key_type
  }

  ttl {
    attribute_name = var.ttl_attribute
    enabled        = var.ttl_enabled
  }

  global_secondary_index {
    name               = var.gsi_name
    hash_key           = var.range_key
    range_key          = var.gsi_range_key
    write_capacity     = var.gsi_write_capacity
    read_capacity      = var.gsi_read_capacity
    projection_type    = "INCLUDE"
    non_key_attributes = [var.hash_key]
  }

  tags = var.tags
}