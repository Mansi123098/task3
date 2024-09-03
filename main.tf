provider "aws" {
  region = "ap-northeast-1"  
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "mansitask123456new"  
  

  tags = {
    Name = "MyExampleBucket"
  }
}

resource "aws_dynamodb_table" "terraform_lock_new" {
  name           = "terraform-locks-new"
  billing_mode    = "PAY_PER_REQUEST" 
  hash_key        = "LockID"

  attribute {
    name = "LockID"
    type = "S"  
  }

  tags = {
    Name        = "Terraform Lock Table New"
  }
}



resource "aws_vpc" "mainnew" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "main-vpcnew"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.mainnew.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-northeast-1a" 
  tags = {
    Name = "subnet"
  }
}

/*resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-northeast-1a" 
  
  tags = {
    Name = "public-subnet"
  }
}*/
