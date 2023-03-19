# create vpc router
resource "google_compute_router" "router" {
  name    = "cv-router"
  region  = var.gcp_region
  network = google_compute_network.main.id
}
