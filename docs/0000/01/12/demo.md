## Demo - Start Simple

```
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Create a container
resource "docker_container" "one" {
  image   = docker_image.ubuntu.latest
  name    = "mr_ubuntu"
  command = ["/bin/sleep", "infinity"]
}

resource "docker_image" "ubuntu" {
  name = "ubuntu:20.04"
}
```