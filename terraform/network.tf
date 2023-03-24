resource "yandex_vpc_network" "network-1" {
name = "network-1"
}

resource "yandex_vpc_subnet" "public-subnet-a" {
name           = "public-subnet-a"
zone           = "ru-central1-a"
network_id     = yandex_vpc_network.network-1.id
v4_cidr_blocks = ["10.10.0.0/16"]
}

resource "yandex_vpc_subnet" "public-subnet-b" {
name           = "public-subnet-b"
zone           = "ru-central1-b"
network_id     = yandex_vpc_network.network-1.id
v4_cidr_blocks = ["10.11.0.0/16"]
}

resource "yandex_vpc_subnet" "public-subnet-c" {
name           = "public-subnet-c"
zone           = "ru-central1-c"
network_id     = yandex_vpc_network.network-1.id
v4_cidr_blocks = ["10.12.0.0/16"]
}

resource "yandex_vpc_subnet" "private-subnet-a" {
name           = "private-subnet-a"
zone           = "ru-central1-a"
network_id     = yandex_vpc_network.network-1.id
v4_cidr_blocks = ["192.168.10.0/24"]
}

resource "yandex_vpc_subnet" "private-subnet-b" {
name           = "private-subnet-b"
zone           = "ru-central1-b"
network_id     = yandex_vpc_network.network-1.id
v4_cidr_blocks = ["192.168.20.0/24"]
}

resource "yandex_vpc_subnet" "private-subnet-c" {
name           = "private-subnet-c"
zone           = "ru-central1-c"
network_id     = yandex_vpc_network.network-1.id
v4_cidr_blocks = ["192.168.30.0/24"]
}