resource "google_compute_instance" "kub-master" {
  count        = "${var.instance_count}"
  name         = "kub-master-${count.index}"
  machine_type = "g1-small"
  zone         = "${var.zone}"
  tags         = ["kub-master"]

  boot_disk {
    initialize_params {
      image = "${var.disk_image}"
    }
  }

  network_interface {
    network = "default"
  }
}
