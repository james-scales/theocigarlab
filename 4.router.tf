resource "google_compute_router" "scalesmainrouter" {
  name    = "scalesmainrouter"
  region  = "us-central1"
  network = google_compute_network.main.id
}
resource "google_compute_router" "usiowarouter" {
  name    = "useastrouter"
  region  = "us-east1"
  network = google_compute_network.main.id
}
resource "google_compute_router" "tokyorouter" {
  name    = "tokyorouter"
  region  = "asia-northeast1"
  network = google_compute_network.main.id
}
resource "google_compute_router" "saopaulorouter" {
  name    = "saopaulorouter"
  region  = "southamerica-east1"
  network = google_compute_network.main.id
}