# OAuth-токен
#https://cloud.yandex.ru/docs/iam/concepts/authorization/iam-token
variable "token" {
  default = "AQAAAAAGQL6RAATuwRqtlE5KfEO3iKUYBBiFNWw"
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
variable "access_key" {
  default = "YCAJEic5BB7ge3AknJgPrfJwJ"
}

# Задаем ы3_secret_key
variable "secret_key" {
  default = "YCNZqxNku2KBzTr8TCJDa48vag7haoZHIXQ-Bi4i"
}