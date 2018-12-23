variable zone {
  description = "GCP zone"
  default     = "europe-north1-c"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
}

variable docker_disk_image {
  description = "Docker disk image"
}
variable "count" {
  description = "VMs count"
  default     = 1
}
