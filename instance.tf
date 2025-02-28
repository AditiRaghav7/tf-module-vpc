module "ec2-instance" {
    source  = "terraform-aws-modules/ec2-instance/aws"
    version = "5.7.1"
  
    name = "single-instance"
    ami =  "ami-09a9858973b288bdd"
    instance_type          = "t3.micro"
    vpc_security_group_ids = [module.vpc.default_security_group_id]
    subnet_id              = module.vpc.public_subnets[0]

  tags = {
     Name = "Ec2-module"
     Environment = "dev"
  }
}
