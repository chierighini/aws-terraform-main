resource "aws_key_pair" "general_ssh_key" {
  key_name   = "general_ssh_key"
  public_key = jsondecode(data.aws_secretsmanager_secret_version.general_ssh_key_version.secret_string)["general_ssh_key_pub"]
}
