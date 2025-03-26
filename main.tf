resource "aws_security_group" "main" {
  name        = "local.sg_final_name"
  description = "var.sg_description"
  vpc_id      = var.vpc_id #if you not provide vpc id it will take default vpc id
  # inbound rules and routes should not create along with module ,it will creats user 
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(
    var.common_tags,
    var.sg_tags,
    {
    Name = "local.sg_final_name"
   }
  )
}
