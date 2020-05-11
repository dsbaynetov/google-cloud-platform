resource "google_compute_instance" "worker" {
  count        = "${var.instance_count}"
  name         = "worker-${count.index}"
  machine_type = "g1-small"
  zone         = "${var.zone}"
  tags         = ["kub-worker"]

  boot_disk {
    initialize_params {
      image = "${var.disk_image}"
    }
  }

  network_interface {
    network       = "default"
    # use ephemeral IP for internet access
    access_config = {}
  }
}
