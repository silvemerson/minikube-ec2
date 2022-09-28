

variable "ami" {
    default = "ami-0149b2da6ceec4bb0"
  
}

variable "instance_type" {
    default = "t3.medium"
  
}


variable "security" {
    default = "sg_minikube"
  
}

variable "ec2name" {
    default = "minikube"
  
}