# Создание сервис акаунта
resource "yandex_iam_service_account" "sa" {
  folder_id = var.folder_id
  name      = "sa"
}

# Создание роли
resource "yandex_resourcemanager_folder_iam_member" "sa-editor" {
  folder_id = var.folder_id
  role      = "storage.editor"
  member    = "serviceAccount:${yandex_iam_service_account.sa.id}"
}

# Создание статического ключа доступа
resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  service_account_id = yandex_iam_service_account.sa.id
  description        = "Static access key for object storage"
}

# Создание сервисных аккаунтов для кластера Kubernetes
resource "yandex_iam_service_account" "instances-editor" {
  name        = "instances"
  description = "service account to manage VMs"
}

resource "yandex_iam_service_account" "docker-registry" {
  name        = "docker"
  description = "service account to use container registry"
}

resource "yandex_resourcemanager_folder_iam_binding" "editor" {
  folder_id = var.folder_id

  role = "editor"

  members = [
  "serviceAccount:${yandex_iam_service_account.instances-editor.id}",
]
}

resource "yandex_resourcemanager_folder_iam_binding" "pusher" {
  folder_id = var.folder_id

  role = "container-registry.images.pusher"

  members = [
  "serviceAccount:${yandex_iam_service_account.docker-registry.id}",
]
}

resource "yandex_resourcemanager_folder_iam_binding" "puller" {
  folder_id = var.folder_id

  role = "container-registry.images.puller"

  members = [
  "serviceAccount:${yandex_iam_service_account.docker-registry.id}",
]
}