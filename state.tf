terraform {
  backend "s3" {
    bucket = "terraform-practice12"
    key    = "params/terraform.tfstate"
    region = "us-east-1"
  }
}

