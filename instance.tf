# creating the EC2


resource "aws_instance" "webapp-1" {
  ami             = "ami-058b904228d1910bf"
  key_name        = "key1"
  instance_type   = "t2.micro"
  subnet_id = aws_subnet.mysubnet-1a.id
  vpc_security_group_ids = [aws_security_group.allow_80_22.id]
  # security_groups = {"default"}
  tags = {
    Name            = "webapp-1"
    App             = "frontend"
    Technical-owner = "Swarna"
  }
}  

resource "aws_instance" "webapp-2" {
  ami             = "ami-09b18720cb71042df"
  key_name        = "key1"
  instance_type   = "t2.micro"
  subnet_id = aws_subnet.mysubnet-1b.id
  vpc_security_group_ids = [aws_security_group.allow_80_22.id]
  # security_groups = {"default"}
  tags = {
    Name            = "webapp-2"
    App             = "frontend"
    Technical-owner = "Swarna"
  }

}


