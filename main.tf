

 resource "aws_vpc" "main" {
  count = 2
  cidr_block       = "10.4.${count.index}.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "${local.last_name}-hello"
    index = count.index
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
