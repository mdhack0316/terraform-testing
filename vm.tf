resource "google_compute_instance" "example" {
  name         = "example-instance"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  labels = {
    environment = "production"
#    owner       = "user"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}
