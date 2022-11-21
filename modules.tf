module "jenkins" {
  source       = "github.com/chierighini/aws-terraform-jenkins.git"
  vpc_id       = var.vpc_id
  subnet_id    = var.subnet_id
  ssh_key_name = var.general_ssh_key_name
}

module "k8s" {
  source = "github.com/chierighini/aws-terraform-k8s.git"
}
