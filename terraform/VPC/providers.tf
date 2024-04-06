terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        #version = "~> 4.0.0"
      }
    }
}

provider "aws" {
    region = "us-east-1"
    access_key = "AKIA47CRVN4EM7Q36YEB"
    secret_key = "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"
}