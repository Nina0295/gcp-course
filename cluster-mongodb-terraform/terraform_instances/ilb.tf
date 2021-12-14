module "gce-ilb" {
  source       = "GoogleCloudPlatform/lb-internal/google"
  version      = "~> 2.0"
  region       = var.region
  name         = "ilb-mongocluster"
  network      = var.network
  subnetwork   = var.subnet
  ports        = ["${var.mongodb_port}"]
  
  health_check = {
    type                = "tcp"
    check_interval_sec  = 1
    healthy_threshold   = 4
    timeout_sec         = 1
    unhealthy_threshold = 5
    request             = ""
    response            = ""
    proxy_header        = "NONE"
    port                = 27017
    port_name           = "health-check-port"
    request_path        = "/"
    host                = ""
  }
  
  source_tags  = ["allow-mongodb"]
  target_tags  = ["allow-mongodb"]

  backends     = [
    { group = google_compute_instance_group.mongo_group1.id, description = "" },
    { group = google_compute_instance_group.mongo_group2.id, description = "" },
    { group = google_compute_instance_group.mongo_group3.id, description = "" },
  ]
}