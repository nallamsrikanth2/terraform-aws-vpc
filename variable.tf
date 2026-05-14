# project
variable "project_name" {
    type = string
  
}

variable "common_tags" {
    type = map
  
}
## vpc

variable "vpc_cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
  
}

variable "environment" {
    default = "dev"
  
}


variable "vpc_tags" {
    default = {}
  
}

### igw

variable "igw_tags" {
    default = {}
  
}

### public subnets

variable "public_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.public_subnet_cidrs) == 2
      error_message = "please provide two vaulable cidrs"
    }
  
}

variable "public_subnet_cidrs_tags" {
    type = map
    default = {}
}


### private subnets

variable "private_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.private_subnet_cidrs) ==2
      error_message = "please provide two vaulable cidrs"
    }
  
}

variable "private_cidrs_tags" {
    type = map
    default = {}
  
}


### database subnets 

variable "database_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.database_subnet_cidrs) ==2
      error_message = "please provide two vaulable valua"
    }
}


variable "database_subnet_tags" {
    type = map
    default = {}
    
}

variable "database_group_tags" {
    type = map
    default = {} 
}
### nat gateway

variable "natgateway_tags" {
    default = {}
  
}

## routa table

variable "public_route_tags" {
    default = {}
  
}

variable "private_route_tags" {
    default = {}
  
}

variable "database_route_tags" {
    default = {}
  
}

## peering

variable "is_peering_required" {
    type = bool
    default = false
  
}

variable "acceptor_id" {
    type = string
    default = ""
  
}

variable "peering_tags" {
    type = map
    default = {}
  
}