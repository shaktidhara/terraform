resource "aws_vpc" "environment-example-network2" {
	cidr_block = "11.0.0.0/16"
	enable_dns_hostnames = true
	enable_dns_support = true
	tags{
		Name = "terraform-aws-vpc-exmpls2"
	}
}
