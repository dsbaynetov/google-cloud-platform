variable zone {
  description = "Zone B"
  default     = "europe-west1-b"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
}

variable disk_image_app {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
