resource "google_compute_router_nat" "eastnat" {
  name   = "eastnat"
  router = google_compute_router.usiowarouter.name
  region = "us-east1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.scaleshq.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.eastnat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "eastnat" {
  name         = "eastnat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
}

resource "google_compute_router_nat" "tokyonat" {
  name   = "tokyonat"
  router = google_compute_router.tokyorouter.name
  region = "asia-northeast1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.tokyohq.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.tokyonat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "tokyonat" {
  name         = "tokyonat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "asia-northeast1"
}