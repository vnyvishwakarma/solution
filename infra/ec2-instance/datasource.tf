##################################################################
# Data sources to get VPC, subnet, security group and AMI details
##################################################################
data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "all" {
  vpc_id = "${data.aws_vpc.default.id}"
}

#####################################################################
# Data source to get ami id
#####################################################################
data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  #AWS owner alias (e.g. amazon, aws-marketplace, microsoft).

  filter {
    name = "name"

    values = [
      "amzn-ami-hvm-*-x86_64-gp2",
    ]
  }
  filter {
    name = "owner-alias"

    values = [
      "amazon",
    ]
  }
}
