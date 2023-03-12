# enable compute service
resource "google_project_service" "compute" {
  service = "compute.googleapis.com"
}

# enable container service
resource "google_project_service" "container" {
  service = "container.googleapis.com"
}

# create the network VPC
resource "google_compute_network" "main" {
  name                            = "main"
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = false # allows to use custom subnets
  mtu                             = 1460
  delete_default_routes_on_create = false # allows to use custom network routes

  depends_on = [
    google_project_service.compute,
    google_project_service.container
  ]
}