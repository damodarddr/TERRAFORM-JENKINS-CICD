terraform {
  backend "s3" {
    bucket         = "mrcloudbook-cicd-bucket"
    key            = "JENKINS1/main/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "mrcloudbook-dynamo-db-table"
  }
}
