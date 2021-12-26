locals {
  first_name = "forum"
  last_name  = "punte"
  sg         = [{ in = 80, out = 90, desc = "1st Rule", cidr_blocks = ["192.168.0.0/24"] }, { in = 90, out = 92, desc = "2nd Rule", cidr_blocks = ["192.168.4.0/24"] }]
}