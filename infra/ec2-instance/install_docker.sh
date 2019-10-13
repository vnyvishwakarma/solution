	#! /bin/bash
    sudo yum update -y
	sudo yum install -y docker
	sudo service docker start
	sudo usermod -a -G docker ec2-user

    # Shell script to install docker on ec2-instance