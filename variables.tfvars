var.vpc_id = aws_vpc.main_vpc.id
var.subnet_id = aws_subnet.main_public.vpc_id
var.general_ssh_key_name = aws_key_pair.general_ssh_key.key_name