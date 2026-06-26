provider "aws" {
  
}

terraform {
  backend "s3" {
    bucket = "tf-resources-gha-bkt"
    region = "us-east-1"
    key = "github-actions/terraform.tfstate"
    encrypt = true
    use_lockfile = true
  }
}