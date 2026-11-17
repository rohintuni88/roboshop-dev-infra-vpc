module "sg" {
  count = length(var.sg_names)
  source = "../../terraform-aws-sg-vpc"
  project = var.project
  environment = var.environment
  vpc_id = local.vpc_id
  sg_name = var.sg_names[count.index]

  sg_tags = {

  }
}