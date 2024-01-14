terraform {
  backend "s3" {
    bucket = "mrcloudbook-cicd-bucket"
    key    = "terraform.tfstate"
    region = "ap-southeast-2"
  }
}
