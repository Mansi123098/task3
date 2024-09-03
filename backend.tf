terraform {
  backend "s3" {
    bucket = "mansitask123456new"
    
    key   = "global/state/terraform.tfstate" 
    region = "ap-northeast-1"
    dynamodb_table = "terraform-locks-new"
    
  }
}

