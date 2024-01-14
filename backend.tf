terraform {
  backend "s3" {
    bucket         = "mrcloudbook-cicd-bucket"
    key            = "my-terraform-environment/main/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "mrcloudbook-dynamo-db-table"
  }
}
