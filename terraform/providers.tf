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
  access_key = "YCAJEYM0tLo6-kE69fPRyyEFW"
  secret_key = "YCMSumWvUN3fpHciKdTy2BeL5NIYPjRKZf_5k0js"

  skip_region_validation      = true
  skip_credentials_validation = true
  }
}

provider "yandex" {
  token     = var.token 
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
}