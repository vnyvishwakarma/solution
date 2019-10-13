provider "aws" {
  region = "${var.aws_region}"
  // Ireland region
}

terraform {
  required_version = "<= 0.11.14"
}