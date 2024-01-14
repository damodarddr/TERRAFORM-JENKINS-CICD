terraform {
  backend "s3" {
    bucket         = "mrcloudbook-cicd-bucket"
    key            = "JENKINS1/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "mrcloudbook-dynamo-db-table"
  }
}
