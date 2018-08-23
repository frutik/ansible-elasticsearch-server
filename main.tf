provider "google" {
  credentials = "${file("account.json")}"
  project     = "automatic-gamma-204817"
  region      = "us-central1"
}


# Create a new instance
resource "google_compute_instance" "elastic" {
   name = "elastic"
   machine_type = "f1-micro"
   zone = "us-west1-a"
   boot_disk {
      initialize_params {
      image = "universal-node"
   }
}

network_interface {
   network = "default"
   access_config {}
}

service_account {
   scopes = ["userinfo-email", "compute-ro", "storage-ro"]
   }
}
