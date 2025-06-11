terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

# Docker image with variable-based name and NGINX version
resource "docker_image" "custom_nginx" {
  name         = var.custom_image_name

  build {
    context    = "${path.module}"
    dockerfile = "${path.module}/Dockerfile"
    build_arg = {
      NGINX_VERSION = var.custom_image_version
    }
  }
}

# Docker container using variabled-based image and ports
resource "docker_container" "static_site" {
  name  = "malock-site"
  image = docker_image.custom_nginx.image_id
  ports {
    internal = var.internal_port
    external = var.external_port
  }
}
