terraform {
  required_version = ">= 0.13"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
#      version = "= 0.73"
    }
  }
}

provider "yandex" {
  token     = "AQ..w0"
  cloud_id  = "b1g43hks12bv8as0q653"
  folder_id = "b1ga7u7bcjd3rfctvh7j"
  zone      = "ru-central1-c"
}

resource "yandex_compute_image" "ubuntu-image" {
  name   = "my-ubuntu-image"
  family = "ubuntu-2004-lts"
}
