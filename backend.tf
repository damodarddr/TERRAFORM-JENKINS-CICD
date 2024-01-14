terraform {
  backend "s3" {
    bucket         = "mrcloudbook-cicd-bucket"
    key            = "dpr/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "mrcloudbook-dynamo-db-table"
  }
}
