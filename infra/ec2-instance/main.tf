module "ec2" {
  source        = "../../modules/ec2-instance"
  name          = "develop_vm"
  ami           = "${data.aws_ami.amazon_linux.id}"
  instance_type = "c4.xlarge"

  // c4.xlarge has 4 vcPU and 7.5 Mem (GiB)
  subnet_id                   = "${element(data.aws_subnet_ids.all.ids, 0)}"
  vpc_security_group_ids      = ["${aws_security_group.allow_ssh.id}"]
  associate_public_ip_address = true
  key_name                    = "${aws_key_pair.deployer.key_name}"

  // Attach role to EC2 instance
  iam_instance_profile = "${aws_iam_instance_profile.ec2_instance_profile.name}"

  // Passing userdata to install docker
  user_data = "${file("install_docker.sh")}"
}
