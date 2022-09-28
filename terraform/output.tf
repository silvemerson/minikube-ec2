resource "local_file" "AnsibleInventory" {
 content = templatefile("inventory.tmpl",
 {
  ip-ec2 = aws_instance.minikube.public_ip,
  nome-ec2 = aws_instance.minikube.tags.Name
  id-ec2 = aws_instance.minikube.id
 }
 )
 filename = "inventory"
}
