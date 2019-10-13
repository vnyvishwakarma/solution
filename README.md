### Requirement

- Requirements

The VM and any running services must only be accessible from The Dock IP of 40.30.20.10
- The VM must be capable of running containerised applications: install of docker via user-data shell script https://github.com/vnyvishwakarma/solution/blob/master/infra/ec2-instance/install_docker.sh;
- The specs must be on or closest to 2GB Ram with 4 CPU Cores (AWS / Azure) :  c4.xlarge has 4 vcPU and 7.5 Mem (GiB), Compute Optimized instances are ideal for compute bound applications that benefit from high performance processors.;
- External storage (i.e. S3 bucket) must be created and made available : Using role to access s3 bucket from ec2 instance https://github.com/vnyvishwakarma/solution/blob/master/infra/ec2-instance/s3-access-role.tf and finally mapping role to ec2-istance using https://github.com/vnyvishwakarma/solution/blob/master/infra/ec2-instance/aws-instance-profile.tf;
- The external storage must remain after the VM has been deleted and be available once again when a replacement VM is created .: seprate script to create s3 bucket https://github.com/vnyvishwakarma/solution/tree/master/infra/s3-bucket-data;
- The VM and any running services must only be accessible from The Dock IP of 40.30.20.10 : security group https://github.com/vnyvishwakarma/solution/blob/master/infra/ec2-instance/security_group.tf ;



### Creating the enviroment is a three step process,after setting up environment variable for terraform. Export AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY environment variable

##### First step: Create tfstat aws s3 bucket (depend on region s3 bucket will be create)
```
cd project_root_dir/infra/s3-bucket-tfstat
terraform init
terraform plan
terraform apply
```

##### Second step: Create s3 bucket for storage to store develop data, it will ask for s3 bucket region name
```
cd project_root_dir/infra/s3-bucket-data
terraform init
terraform plan
terraform apply
```

##### Third step: Create ec2 instance, security group and role to access s3 bucket. It will ask for region name and ssh public key path. You destroy the vm multiple times as well by doing terraform destroy.

```
cd project_root_dir/infra/ec2-instance
terraform init
terraform plan
terraform apply

```



