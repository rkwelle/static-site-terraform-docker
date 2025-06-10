terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "custom_nginx" {
  name         = "custom-nginx"
  build {
    context    = "${path.module}"
    dockerfile = "${path.module}/Dockerfile"
  }
}

resource "docker_container" "static_site" {
  name  = "malock-site"
  image = docker_image.custom_nginx.image_id
  ports {
    internal = 80
    external = 8080
  }
}
