#ec2 variables
variable "instance_name" {
    type= list
    default= ["db", "backend", "frontend"]
}
variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description= "RHEL-9 AMT ID"
}

variable "instance_type" {
    default= "t3.micro" 
     type = string
}

#variable "sg_ids" {
 #   default= "aws_security_group.allow_ssh.id"
  #  type= list
#}

variable "common_tags" {
    default= {
        Project= "Expense"
        Environment= "Dev"
        Terraform= "True"
    }
}

#sg variables
variable "sg_name" {
    default= "allow_ssh"
}

variable "sg_description" {
    default= "allowing on port"
}

variable "ssh_port" {
    default= 22
    type= number
}

variable "ssh_protocol" {
    default= "tcp"
    type= string
}

variable "allowed_cidr" {
    type= list(string)
    default= ["0.0.0.0/0"]
}

#Route53 variables

variable "zone_id" {
    default= "Z0198764N85Y9CKTDFK6"
}

variable "domain_name" {
    default= "daws78s.fun"
}