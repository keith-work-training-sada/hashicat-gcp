module "network" {
  source  = "app.terraform.io/sada-partner-training-20230705/network/google"
  version = "3.4.0"
  # insert required variables here

  project_id   = var.project
  network_name = "keith-network"
  routing_mode = "GLOBAL"

  subnets = [
    {
      subnet_name   = "keith-subnet"
      subnet_ip     = "10.101.10.0/24"
      subnet_region = var.region
    }
  ]
}
