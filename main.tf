resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = var.container_name
  ports {
    internal = 80
    external = 8000
  }
}

resource "docker_image" "nginx2" {
  name         = "nginx2:latest"
  keep_locally = false
}

resource "docker_container" "nginx2" {
  image = docker_image.nginx.image_id
  name  = var.container2_name
  ports {
    internal = 80
    external = 8001
  }
}