Steps for running this demo.

```
terraform init
terraform plan -var-file=values.tfvars -out=mytfplan
terraform apply mytfplan
```

You should destroy everything which you have created part of this example.

Command for destroy

```
terraform destroy -var-file=values.tfvars
```
