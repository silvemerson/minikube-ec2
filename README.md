<h2> Minikube on AWS EC2 - Terraform + Ansible </h2>

<h3>Requirements:</h3>

	- aws-cli
    - Terraform
    - Ansible

- Clone the repo and give the run.sh file permission with chmod +x

<br>

Configured the services above, run the script "run.sh". It will display an options menu on the screen
In the first option, Infra will be created on AWS. Terraform will create an inventory file with the EC2 IP. 

Option menu to be chosen:

        $ sh run.sh 
          Welcome to IaC Adventure
          [ 1 ] Create EC2 on AWS
          [ 2 ] Delete EC2
          [ 3 ] Install Minikube by Ansible
          [ 4 ] Start EC2 - In development
          [ 5 ] Stop EC2 - In development
          [ 6 ] Exit 


<br>
<br>
<h3>Configuring the module:</h3>

Set the path to your aws .pem key in the terraform/inventory.tmpl file.

<b>ansible_ssh_private_key_file='path/your-key.pem'</b>

This file is responsible for creating the config that the ansible playbook will access, customize with the EC2 username, key address and host group name for example.