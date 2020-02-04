variable project {
  description = "Project ID"
}

variable zone {
  description = "Zone B"
  default     = "europe-west1-b"
}

variable region {
  description = "VM instance region"
  default     = "europe-west1"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
}

variable disk_image {
  description = "Disk image"
}
