# module "jenkins" {
#   source       = "github.com/chierighini/aws-terraform-jenkins.git"
#   vpc_id       = module.main_vpc.vpc_id
#   subnet_id    = element(module.main_vpc.public_subnets, 1)
#   ssh_key_name = aws_key_pair.general_ssh_key.key_name
# }

# module "k8s" {
#   source       = "github.com/chierighini/aws-terraform-k8s.git"
#   vpc_id       = module.main_vpc.vpc_id
#   subnet_ids   = module.main_vpc.private_subnets
#   ssh_key_name = aws_key_pair.general_ssh_key.key_name
#   aws_azs      = module.main_vpc.azs
# }

module "discord-bot"{
  source = "github.com/chierighini/aws-terraform-discord-bot.git"
  vpc_id       = module.main_vpc.vpc_id
  subnet_id    = element(module.main_vpc.public_subnets, 2)
  ssh_key_name = aws_key_pair.general_ssh_key.key_name
  discord_token = jsondecode(data.aws_secretsmanager_secret_version.discord_bot_token_version.secret_string)["discord_bot_token"]
  discord_client_id = jsondecode(data.aws_secretsmanager_secret_version.discord_bot_client_id_version.secret_string)["discord_bot_client_id"]
  bot_instance_ami = data.aws_ami.amazon-linux-2.id

}