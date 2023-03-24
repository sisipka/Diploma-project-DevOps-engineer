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
variable "s3_access_key" {
  default = "YCAJEr4sJutIXkaFjgbtZHCVh"
}

# Задаем s3_secret_key
variable "s3_secret_key" {
  default = "YCMIIytL3nqHcjG8YYI2DKx-fbkB-FNXFEh81yUg"
}