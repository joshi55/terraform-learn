

 resource "aws_vpc" "main" {
  count = 0
  cidr_block       = "10.4.${count.index}.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "${local.last_name}-hello"
    index = count.index
  }
}
 

 

resource "aws_security_group" "mysecurity" {
 
 dynamic "ingress" {
    for_each = local.sg
    content {
      description = ingress.value.desc
      from_port   = ingress.value.in
      to_port     = ingress.value.out
      protocol    = "tcp"
      cidr_blocks = ingress.value.cidr_blocks
    }
 }

}
/*
 data "aws_vpc" "selected" {
  id="vpc-0f2379d883cd70548"
  cidr_block = "10.0.0.0/18"
 } */

 
resource "aws_iam_user" "the-accounts" {
  for_each = toset( ["Todd", "James", "Alice", "Dottie"] )
  name     = each.value
}
