# # create security group for the web server

# # terraform aws create security group
# resource "aws_security_group" "webserver_security_group" {
#   name        = "webserver-SG"
#   description = "enable http/https access on port 80 via app load balancer SG and access on port 22 via ssh"
#   vpc_id      = 

#   ingress {
#     description      = "http access"
#     from_port        = 80
#     to_port          = 80
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }


#   ingress {
#     description      = "ssh access"
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }


#   ingress {
#     description      = "allow traffic from the load balancer"
#     from_port        = 0
#     to_port          = 65535
#     protocol         = "tcp"
#     security_groups  = [aws_security_group.alb_sec_group.id]
#   }
  
#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = -1
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   tags   = {
#     Name = "webserver-SG"
#   }
# }

# # create security group for the application load balancer
# # terraform aws create security group
# resource "aws_security_group" "alb_sec_group" {
#   name        = "app-alb-SG"
#   description = "enable http/https access on port 80/443"
#   vpc_id      = 
#   ingress {
#     description      = "http access"
#     from_port        = 80
#     to_port          = 80
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   ingress {
#     description      = "https access"
#     from_port        = 443
#     to_port          = 443
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = -1
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   tags   = {
#     Name = "alb_sec_group"
#   }
# }
