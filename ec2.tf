resource "aws_instance" "web" {
  count = 1
  ami           = "ami-020cba7c55df1f615"
  instance_type = "t3.small"
  tags = {
    Name = "Ansible server"
  }
}