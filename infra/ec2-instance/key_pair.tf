resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  //public_key = "${file("/Users/vinvishw/.ssh/id_rsa.pub")}" example
  public_key = "${file("${var.public_key_path}")}"
}
