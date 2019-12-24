In this demo , we will be using S3 and dynamo db for managing tfstate.
Running this demo, backend s3 and dynamo should already exists.

Go to [Variable Example](https://bit.ly/2EMJWwv).It will create S3 and dynamo db for us. Don't run `terraform destory` for now. We need those resources.

Steps for running this demo

```
cd s3backend-dynamo
terraform init
terraform plan -out=myplan
terraform apply mytfplan
```

You should see this string `Acquiring state lock. This may take a few moments`. It means our code is running properly. It has saved tfstate in s3 bucket.

Now you should delete resources.`terraform destroy`

Delete resources in variables folder as well.
