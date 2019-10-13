resource "aws_s3_bucket" "this" {


  bucket        =   "${var.bucket_name}"
  acl           =   "${var.acl}"
  tags          =   "${var.tags}"
  force_destroy =   "${var.force_destroy}"
  region        =   "${var.region}"

}