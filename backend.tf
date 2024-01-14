terraform {
  backend "s3" {
    bucket         = "mrcloudbook-cicd-bucket1"
    key            = "my-terraform-environment/main/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "mrcloudbook-dynamo-db-table"
  }
}
