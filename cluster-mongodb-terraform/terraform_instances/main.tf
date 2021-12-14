provider "google" {
  project     = var.project
  region      = var.region
}

resource "google_compute_instance" "mongo_node1" {
  name         = "mongodb-node1"
  description  = "VM hosting tools for node 1 of mongodb"

  machine_type = "f1-micro"
  zone         = var.zones[0]

  labels = {
    env        = "dev"
    app        = "mongodb"
  }

  boot_disk {
    initialize_params {
      image    = "ubuntu-os-cloud/ubuntu-1804-lts"
      size     = 10
    }
  }

  network_interface {
   network = "default"

   access_config {
     // Ephemeral IP
   }
}

  metadata = {
    metadata_startup_script = file("${path.module}/startup-script.sh")
    ssh-keys   = "${var.ssh_user}:${file("${var.public_key_path}")}"
  }

  tags = ["allow-mongodb"]
}

resource "google_compute_instance" "mongo_node2" {
  name         = "mongodb-node2"
  description  = "VM hosting tools for node 2 of mongodb"

  machine_type = "f1-micro"
  zone         = var.zones[1]

  labels = {
    env        = "dev"
    app        = "mongodb"
  }

  boot_disk {
    initialize_params {
      image    = "ubuntu-os-cloud/ubuntu-1804-lts"
      size     = 10
    }
  }

  network_interface {
   network = "default"

   access_config {
     // Ephemeral IP
   }
}
  
  metadata = {
    metadata_startup_script = file("${path.module}/startup-script.sh")
    ssh-keys   = "${var.ssh_user}:${file("${var.public_key_path}")}"
  }

  tags = ["allow-mongodb"]
}

resource "google_compute_instance" "mongo_node3" {
  name         = "mongodb-node3"
  description  = "VM hosting tools for node 3 of mongodb"

  machine_type = "f1-micro"
  zone         = var.zones[2]

  labels = {
    env        = "dev"
    app        = "mongodb"
  }

  boot_disk {
    initialize_params {
      image    = "ubuntu-os-cloud/ubuntu-1804-lts"
      size     = 10
    }
  }

  network_interface {
   network = "default"

   access_config {
     // Ephemeral IP
   }
}

  metadata = {
    metadata_startup_script = file("${path.module}/startup-script.sh")
    ssh-keys   = "${var.ssh_user}:${file("${var.public_key_path}")}"
  }

  tags = ["allow-mongodb"]
}

resource "google_compute_instance_group" "mongo_group1" {
  name        = "mongodb-group1"
  description = "Zonal instance group for mongodb cluster"

  instances = [
    google_compute_instance.mongo_node1.id,
  ]

  named_port {
    name = "mongodb"
    port = var.mongodb_port
  }

  zone = var.zones[0]
}

resource "google_compute_instance_group" "mongo_group2" {
  name        = "mongodb-group2"
  description = "Zonal instance group for mongodb cluster"

  instances = [
    google_compute_instance.mongo_node2.id,
  ]

  named_port {
    name = "mongodb"
    port = var.mongodb_port
  }

  zone = var.zones[1]
}

resource "google_compute_instance_group" "mongo_group3" {
  name        = "mongodb-group3"
  description = "Zonal instance group for mongodb cluster"

  instances = [
    google_compute_instance.mongo_node3.id,
  ]

  named_port {
    name = "mongodb"
    port = var.mongodb_port
  }

  zone = var.zones[2]
}