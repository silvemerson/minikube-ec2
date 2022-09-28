resource "aws_instance" "minikube" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = ["sg_kubernetes"]
    key_name = "aws-terraform"
    tags = {
        Name = var.ec2name
}
}