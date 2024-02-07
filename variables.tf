# VARIABLES


# VPC Variables
variable "vpc_cidr"{
    default = "10.0.0.0/16"
    description = "VPC CIDR Block"
    type = string 

}

# Public subnet az1 variables
variable ""{
    default = "10.0.0.0/24"
    description = "Public Subnet Az1 CIDR Block"
    type = string 

}

# Public subnet az2 variables
variable "public_subnet_az2_cidr"{
    default = "10.0.1.0/24"
    description = "Public Subnet Az2 CIDR Block"
    type = string 

}


# Private App subnet az1 Variables
variable "private_app_subnet_az1_cidr"{
    default = "10.0.2.0/24"
    description = "Private App subnet az1 CIDR Block"
    type = string 

}

# Private App subnet az2 Variables
variable "private_app_subnet_az2_cidr"{
    default = "10.0.3.0/24"
    description = "Private App subnet az2 CIDR Block"
    type = string 

}