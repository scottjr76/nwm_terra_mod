module "prod_frontend" {
  source = "./aws_instances"
  total_instances = 2
}

module "prod_backend" {
  source = "./aws_instances"
  region = "ca-central-1"
  total_instances = 2
}

module "stag_frontend" {
  source = "./aws_instances"
  total_instances = 1
}

module "stag_backend" {
  source = "./aws_instances"
  region = "ca-central-1"
  total_instances = 1
}

output "front_end_ips" {
  value = "${module.frontend.ips}"
}

output "back_end_ips" {
  value = "${module.backend.ips}"
}
