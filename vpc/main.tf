module "vpc-terraform-test-module" {
  source      = "../../vpc-terraform"
  project     = var.project
  environment = var.environment
}