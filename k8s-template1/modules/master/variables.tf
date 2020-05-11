variable zone {
  description = "Zone B"
  default     = "europe-west1-b"
}

variable disk_image {
  description = "Disk image for instance"
  default     = "ubuntu-1804-lts"
}

variable instance_count {
  description = "Instances count"
  default     = 3
}
