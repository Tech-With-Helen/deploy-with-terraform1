variable "vpc_cidr" {
  description = "vpc cidr block variable"
  type        = string

}

variable "public_subnet_az1_cidr" {
  description = "public subnet AZ1 CIDR Block"
  type        = string

}

variable "public_subnet_az2_cidr" {
  description = "public subnet AZ2 CIDR Block"
  type        = string

}


variable "private_app_subnet_az1_cidr" {
  description = "Private App subnet az1 CIDR Block"
  type        = string

}

variable "private_app_subnet_az2_cidr" {
  description = "Private App subnet az2 CIDR Block"
  type        = string

}
