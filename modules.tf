module "jenkins" {
  source = "github.com/chierighini/aws-terraform-jenkins.git"
}

module "k8s" {
  source = "github.com/chierighini/aws-terraform-k8s.git"
}
