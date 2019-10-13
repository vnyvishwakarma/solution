provider "aws" {
  region     = "${var.aws_region}"

  /*
  Ireland region is eu-west-1
  Export AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY environment variable
*/
}