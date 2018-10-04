resource "aws_vpc" "environment-example-network" {
	cidr_block = "11.0.0.0/16"
	enable_dns_hostnames = true
	enable_dns_support = true
	tags{
		Name = "terraform-aws-vpc-exmpls"
	}
}

resource "aws_subnet" "subnet1" {
	cidr_block="${cidrsubnet(aws_vpc.environment-example-network.cidr_block, 3, 1)}"
	vpc_id = "${aws_vpc.environment-example-network.id}"
	availability_zone="eu-east-1"
}