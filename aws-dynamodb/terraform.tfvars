aws_region            = "us-east-1"
table_name            = "GameScores"
billing_mode          = "PROVISIONED"
read_capacity         = 20
write_capacity        = 20
hash_key              = "UserId"
hash_key_type         = "S"
range_key             = "GameTitle"
range_key_type        = "S"

ttl_attribute         = "TimeToExist"
ttl_enabled           = true

gsi_name              = "GameTitleIndex"
gsi_range_key         = "TopScore"
gsi_range_key_type    = "N"
gsi_read_capacity     = 10
gsi_write_capacity    = 10

tags = {
  Environment = "dev"
  Owner       = "visala"
}

