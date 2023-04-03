# OAuth-токен
#https://cloud.yandex.ru/docs/iam/concepts/authorization/iam-token
variable "token" {
  default = ""
}

# Заменить на ID своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "cloud_id" {
  default = "b1g3va6uroak1bss6lnp"
}

# Заменить на Folder своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "folder_id" {
  default = "b1ge911130k5mdbil616"
}

# Задаем имя buketa
variable "bucket_name" {
  default = "diploma-shestihin"
}

# Задаем s3_access_key
variable "s3_access_key" {
  default = ""
}

# Задаем s3_secret_key
variable "s3_secret_key" {
  default = ""
}