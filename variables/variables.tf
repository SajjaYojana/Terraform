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

variable "tags" {
    default= {
        Project= "Expense"
        Environment= "Dev"
        Module= "DB"
        Name= "DB"
    }
}

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