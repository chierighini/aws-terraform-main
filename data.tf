data "aws_secretsmanager_secret" "general_ssh_key" {
  name = "general_ssh_key_pub"
}

data "aws_secretsmanager_secret_version" "general_ssh_key_version" {
  secret_id = data.aws_secretsmanager_secret.general_ssh_key.id
}

data "aws_secretsmanager_secret" "discord_bot_token" {
  name = "discord_bot_token"
}

data "aws_secretsmanager_secret_version" "discord_bot_token_version" {
  secret_id = data.aws_secretsmanager_secret.discord_bot_token.id
}

data "aws_secretsmanager_secret" "discord_bot_client_id" {
  name = "discord_bot_client_id"
}

data "aws_secretsmanager_secret_version" "discord_bot_client_id_version" {
  secret_id = data.aws_secretsmanager_secret.discord_bot_client_id.id
}

data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]  
  filter {
    name   = "name"
    values = ["al2022-ami*"]
  }
}
