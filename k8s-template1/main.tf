terraform {
  # terraform version
  required_version = "0.11.14"
}

provider "google" {
  #provider version
  version = "2.0.0"

  # ID project
  project = "${var.project}"
  region  = "${var.region}"
}

module "master" {
  source         = "modules/master"
  zone           = "${var.zone}"
  instance_count = "${var.master_count}"
  disk_image     = "${var.disk_image_master}"
}

module "worker" {
  source         = "modules/worker"
  zone           = "${var.zone}"
  instance_count = "${var.worker_count}"
  disk_image     = "${var.disk_image_worker}"
}
