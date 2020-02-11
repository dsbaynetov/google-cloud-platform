variable zone {
  description = "Zone B"
  default     = "europe-west1-b"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable disk_image_db {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
