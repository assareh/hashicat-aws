provider "vault" {
  namespace = "solutions-engineering"
}

data "vault_aws_access_credentials" "creds" {
  backend = "aws"
  role    = "aws-ec2"
}

