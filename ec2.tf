resource "aws_instance" "web" {
  count = 1
  ami           = "ami-020cba7c55df1f615"
  instance_type = "t3.small"
  tags = {
    Name = "Ansible server"
  }

}
resource "aws_instance" "master" {
  ami           = "ami-0360c520857e3138f" # change it
  instance_type = "t3.small"
  security_groups = ["alltraffic-sg"] # change it

  tags = {
    Name = "Jenkins-master"
  }
}

resource "aws_instance" "node" {
  ami           = "ami-0360c520857e3138f" # change it
  instance_type = "t3.small"
  security_groups = ["alltraffic-sg"] # change it

  tags = {
    Name = "Application-Node"
  }
}
