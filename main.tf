resource "aws_instance" "web" {
        ami = var.myami
  instance_type = var.instance
  count = 3
  tags = {
    Name = "helloajay$[count.index]"
  }
}
