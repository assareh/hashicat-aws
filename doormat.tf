data "tfe_outputs" "doormat_role" {
  organization = "hashidemos"
  workspace    = "doormat-aws-infra"
}

provider "doormat" {}

data "doormat_aws_credentials" "creds" {
  provider = doormat

  role_arn = "${data.tfe_outputs.doormat_role.values.role_arn_base}${var.TFC_WORKSPACE_NAME}"
}