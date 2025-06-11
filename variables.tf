
variable "custom_image_name" {
  description = "The name of the Docker image to build"
  type        = string
  default     = "custom-nginx" 
}

variable "custom_image_version" {
  description = "The NGINX version to use"
  type        = string
  default     = "1.24.0" 
}

variable "internal_port" {
  description = "The internal port for the NGINX container"
  type        = number
  default     = 80
}

variable "external_port" {
  description = "The external port for the NGINX container"
  type        = number
  default     = 8080
}