/*
output "VPC_Info" {

value = 
    //value = aws_vpc.main[*].arn
  //  sensitive  = true
}

*/
output "owner" {

    value=data.aws_caller_identity.current 
 
}
/*
output "vpc_info" {

   value = data.aws_vpc.selected
 }*/
