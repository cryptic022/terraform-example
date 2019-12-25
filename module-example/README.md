In this example, we have made 2 modules, User Module and Customer Module.I have just put dummy resources like s3 , kinesis for example. Module can have any number of resources.Companies can have their own registry for modules which will be used by other teams.

Steps for creating resources in dev environment.

```
cd module-example/env/dev
terraform init
terraform plan -out=myplan
terraform apply
```

Similar approach will be taken for stage/prod environment.We can pass it different values for different environment.

If you will see, I have changed the provider region for each environment.
