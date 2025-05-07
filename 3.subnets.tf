resource "google_compute_subnetwork" "scales050625" {
  name                     = "scales050625"
  ip_cidr_range            = "10.255.5.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "scaleshq" {
  name                     = "scaleshq"
  ip_cidr_range            = "10.255.15.0/24"
  region                   = "us-east1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "tokyohq" {
  name                     = "tokyohq"
  ip_cidr_range            = "10.255.25.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "tokyohq1" {
  name                     = "tokyohq1"
  ip_cidr_range            = "10.255.27.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "tokyohq2" {
  name                     = "tokyohq2"
  ip_cidr_range            = "10.255.29.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "saopaulohq" {
  name                     = "saopaulohq"
  ip_cidr_range            = "10.255.35.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}