####### Security Group #####

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSL inbound traffic"
  vpc_id      = "${data.aws_vpc.default.id}"

  ingress {
    # SSH (change to whatever ports you need)
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["40.30.20.10/32"]
    description = "allowing SSH accessible form The Dock IP of 40.30.20.10"

    # restrict your ingress to only necessary IPs and ports.
  }

  ingress {
    # SSH (change to whatever ports you need)
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["90.219.22.147/32"]
    description = "allowing SSH accessible form The Dock IP of 90.219.22.147"

    # restrict your ingress to only necessary IPs and ports.
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allowing all outgoing traffic"
  }

  tags = {
    Name = "allow_ssh"
  }
}
