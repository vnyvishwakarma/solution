##
module "s3_tfstate_bucket" {
  source = "../../modules/s3-bucket"

  bucket = "dock-s3bucket-tfstat"
  acl    = "private"

  region = "${var.aws_region}"
   tags = {
    Name        = "My dock TFSTAT bucket to store terraform state"
    Environment = "Dev"
  }
 
}
