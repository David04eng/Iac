resource "aws_security_group" "ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound"
  vpc_id      = "vpc-0bdc9d24c9931ef09"

  ingress {
    description = "SSH from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["201.163.214.83/32"] # <- aquí va tu IP pública
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}