# Creation group of instances on GCP and clusters on Mongodb Atlas using Terraform 

The principle will be to create the infrastructure with Terraform:
* 3 Compute Engine instances
* 3 unmanaged instance groups
* 1 internal load balancer (which will create a healthcheck, a forwarding rule, some firewall rules behing the scene)
* 1 MongoDB Atlas Cluster with 3 nodes which we will connect with our instances

The ingredients will be the following:
- GCP
- Terraform 0.13
- MongoDB Atlas 4.4

To apply
1) required permissions for service account: editor, compute network admin, security admin
2) initialize Terraform in order to download provider’s files and and the modules by executing ```terraform init```
3) to check the syntax ```terraform validate```
4) to check the resources that will be created ```terraform validate```
5) run ```terraform apply```

To destroy
1) run ```terraform destroy```

