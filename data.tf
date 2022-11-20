data "aws_secretsmanager_secret" "general_ssh_key" {
  name = "general_ssh_key_pub"
}

data "aws_secretsmanager_secret_version" "general_ssh_key_version" {
  secret_id = data.aws_secretsmanager_secret.general_ssh_key.id
}
