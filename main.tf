terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 2.21"
    }
  }

  required_version = ">= 0.14"
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  name = "nginx_container"
  image = docker_image.nginx.latest
  ports {
    internal = 80
    external = 8080
  }
}
