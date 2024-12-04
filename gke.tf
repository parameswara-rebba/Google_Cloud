resource "google_container_cluster" "primary" {
  name               = "example-cluster"
  location           = "us-central1"
  networking_mode    = "VPC_NATIVE"
  subnetwork         = "us-central1-01" # Ensure this subnetwork exists
  initial_node_count = 1

    node_config {
    machine_type = "e2-medium"
    service_account = "rebba-449@rebba-439511.iam.gserviceaccount.com" # Use the correct service account
  }
}
