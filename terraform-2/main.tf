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

module "app" {
  source           = "modules/app"
  public_key_path  = "${var.public_key_path}"
  private_key_path = "${var.private_key_path}"
  zone             = "${var.zone}"
  disk_image_app   = "${var.disk_image_app}"
}

module "db" {
  source          = "modules/db"
  public_key_path = "${var.public_key_path}"
  zone            = "${var.zone}"
  disk_image_db   = "${var.disk_image_db}"
}
