Terraform community has shared common modules on terraform registry which we can directly use in our code.
We can find it here suitable module [Module Registry](https://registry.terraform.io/)

I have used this module [S3 bucket creation](https://registry.terraform.io/modules/yukihira1992/s3-private-bucket/aws/0.1.0) which creates s3 bucket for us.

Steps

1. Just copy paste the module code from terraform registry
2. Add input variable according to your demand
3. terraform init (This will import module code from terraform registry)
4. terraform plan -out=mytfplan (Here you will see the resource creation count)
5. terraform apply mytfplan
