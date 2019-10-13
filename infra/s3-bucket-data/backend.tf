terraform {
  backend "s3" {
    bucket = "dock-s3bucket-tfstat"
    key    = "tfstat/dock-s3bucket-data.tfstat"
    region = "eu-west-1"
    // Backend block don't support variable parameter
  }

  required_version = "<= 0.11.14"
}