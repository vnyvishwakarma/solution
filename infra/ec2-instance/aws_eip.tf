resource "aws_eip" "this" {
  vpc      = true
  instance = "${module.ec2.id[0]}"
}