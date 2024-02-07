# allocate elastic ip. it will be used for the nat-gateway in the public subnet az1 

# allocate elastic ip. it will be used for the nat-gateway in the public subnet az1 

# terraform aws allocate elastic ip
resource "aws_eip" "eip_for_nat_gateway_az1" {
  domain = "vpc"

  tags = {
    Name = "nat gateway az1 eip"
  }
}


# create nat gateway in public subnet az1
# terraform create aws nat gateway
resource "aws_nat_gateway" "nat_gateway_az1" {
  allocation_id = aws_eip.eip_for_nat_gateway_az1.id
  subnet_id     = aws_subnet.public_subnet_az1.id

  tags = {
    Name = "Nat gateway AZ1"
  }
}

# create private route table az1 and add route through nat gateway az1
# terraform aws create route table
resource "aws_route_table" "private_route_table_az1" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway_az1.id
  }

  tags = {
    Name = "private route table az1"
  }
}

# associate private app subnet az1 with private route table az1
# terraform aws associate subnet with route table
resource "aws_route_table_association" "private_app_subnet_az1_route_table_az1_association" {
  subnet_id      = aws_subnet.private_app_subnet_az1.id
  route_table_id = aws_route_table.private_route_table_az1.id
}


# associate private app subnet az2 with private route table az1
# terraform aws associate subnet with route table
resource "aws_route_table_association" "private_app_subnet_az2_route_table_az2_association" {
  subnet_id      = aws_subnet.private_app_subnet_az2.id
  route_table_id = aws_route_table.private_route_table_az1.id
}