output "vpc_id" {
  value = module.vpc-terraform-test-module.vpc_id
}

output "public_subnets_id" {
  value = module.vpc-terraform-test-module.public_subnet_ids

}

output "private_subnets_ids" {
  value = module.vpc-terraform-test-module.private_subnet_ids

}

output "database_subnets_ids" {
  value = module.vpc-terraform-test-module.database_subnet_ids

}