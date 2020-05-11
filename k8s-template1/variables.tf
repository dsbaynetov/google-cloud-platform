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

variable disk_image_master {
  description = "Disk image for master nodes"
  default     = "ubuntu-1804-lts"
}

variable disk_image_worker {
  description = "Disk image for worker nodes"
  default     = "ubuntu-1804-lts"
}

variable master_count {
  description = "Master instances count"
  default = 1
}

variable worker_count {
  description = "Worker instances count"
  default     = 1
}
