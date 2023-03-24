terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.85.0"
    }
  }
  backend "s3" {
  endpoint   = "storage.yandexcloud.net"
  bucket     = "state-shestihin"
  region     = "ru-central1"
  key        = "terraform.tfstate"
  access_key = "YCAJEOt6XuTHuc1MUWBpEPs0X"
  secret_key = "YCOoUxagOyw6JzI5-g0d03AZ_vtBzyTxFAF9azF0"

  skip_region_validation      = true
  skip_credentials_validation = true
  }
}

provider "yandex" {
  token     = var.token 
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
}