# terraform/main.tf

provider "google" {
  project = "YOUR_GCP_PROJECT_ID"
  region  = "us-central1"
}

# 1. Create the GKE Cluster
resource "google_container_cluster" "primary" {
  name     = "hello-app-cluster"
  location = "us-central1-a"

  # We are creating a small cluster for learning/testing
  initial_node_count = 1

  node_config {
    machine_type = "e2-medium" # Cost-effective for freshers to experiment
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}

# 2. Output the endpoint for verification
output "kubernetes_cluster_name" {
  value = google_container_cluster.primary.name
}