terraform {
  backend "s3" {
    bucket = "terraform-practice12"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}
