terraform {
  required_providers {
    mycloud = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket  = "eks-backend-bucket-323"
  tags    = {
	Name          = "eks-backend-bucket-323"
  }
}

terraform {  
  backend "s3" {  
    bucket       = "eks-backend-bucket-323"  
    key          = "eks/lock/"  
    region       = "us-east-1"  
    encrypt      = true  
    use_lockfile = true  #S3 native locking
  }  
}
