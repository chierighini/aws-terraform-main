module "jenkins" {
  source       = "github.com/chierighini/aws-terraform-jenkins.git"
  vpc_id       = module.main_vpc.vpc_id
  subnet_id    = element(module.main_vpc.public_subnets, 1)
  ssh_key_name = aws_key_pair.general_ssh_key.key_name
}

module "k8s" {
  source       = "github.com/chierighini/aws-terraform-k8s.git"
  vpc_id       = module.main_vpc.vpc_id
  subnet_ids   = module.main_vpc.private_subnets
  ssh_key_name = aws_key_pair.general_ssh_key.key_name
  aws_azs      = module.main_vpc.azs
}
