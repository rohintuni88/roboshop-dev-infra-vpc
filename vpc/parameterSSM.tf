# VPC id Output id we needs to store in SSM Parameter store for SG usage.

resource "aws_ssm_parameter" "vpc_id" {
  name      = "/${var.project}/${var.environment}/vpc_id"
  type      = "String"
  value     = module.vpc-terraform-test-module.vpc_id
  overwrite = true
}
#Here public_subnet_ids Data type is List, so we need to convert List to string, for that we needs to use "Join" Keyword
resource "aws_ssm_parameter" "public_subnet_ids" {
  name      = "/${var.project}/${var.environment}/public_subnet_ids"
  type      = "String"
  value     = join(",", module.vpc-terraform-test-module.public_subnet_ids) 
  overwrite = true
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name      = "/${var.project}/${var.environment}/private_subnet_ids"
  type      = "String"
  value     = join(",", module.vpc-terraform-test-module.private_subnet_ids)
  overwrite = true
}

resource "aws_ssm_parameter" "database_subnet_ids" {
  name      = "/${var.project}/${var.environment}/database_subnet_ids"
  type      = "String"
  value     = join(",", module.vpc-terraform-test-module.database_subnet_ids)
  overwrite = true
}
