module "s3_data_bucket" {
  source = "../../modules/s3-bucket"

  bucket_name = "dock-s3bucket-data"
  acl    = "private"

  region = "${var.aws_region}"
   tags = {
    Name        = "My dock s3 data bucket"
    Environment = "Dev"
  }

}
