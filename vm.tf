resource "google_compute_instance" "my_instance" {
  name         = "my-instance"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  labels = {
    environment = "production"
   }
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}
