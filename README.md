# terraform-example

This repo has terraform different examples which covers all functionality of terraform

## Quick start

**Note**: These examples deploy resources into your AWS account. Although all the resources should fall under the
[AWS Free Tier](https://aws.amazon.com/free/), it is not my responsibility if you are charged money for this.

1. Install [Terraform](https://www.terraform.io/).
1. Set your AWS credentials as the environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
1. `cd` into one of the example folders.
1. Run `terraform init`.
1. Run `terraform plan`
1. Run `terraform apply`.
1. After it's done deploying, you could see your resources in aws account.
1. To clean up and delete all resources after you're done, run `terraform destroy`.
