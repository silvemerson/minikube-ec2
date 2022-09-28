resource "aws_instance" "minikube" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = ["sg_minikube"]
    key_name = var.aws_key
    tags = {
        Name = var.ec2name
}
}