## 1. Создание облачной инфраструктуры 
 
Создаем сервис аккаунт с ролью **editor** для S3 bucket, статические ключи и S3 bucket для хранения состояния Terraform - делается до начала использования Terraform.

```bash
# Создание сервисного аккаунта `state-shestihin`
yc iam service-account create --name state-shestihin
#  Узнайте идентификатор сервисного аккаунта `state-shestihin`
yc iam service-account get state-shestihin
# Назначьте роль сервисному аккаунту `state-shestihin`
yc resource-manager folder add-access-binding netology \
  --role editor \
  --service-account-name state-shestihin 
# Создайте ключ доступа для сервисного аккаунта `state-shestihin` - нужно прописать в файле providers.tf
yc iam access-key create --service-account-name state-shestihin
# Создайте бакет `state-shestihin` в каталоге по умолчанию
yc storage bucket create \
  --name state-shestihin \
  --default-storage-class standard

```

В файле providers.tf добавляем:

```bash
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
```


## 2. Создание Kubernetes кластера

```bash
# Создание кластера Kubernetes
# https://cloud.yandex.ru/docs/managed-kubernetes/operations/kubernetes-cluster/kubernetes-cluster-create

# Обзор способов подключения
# https://cloud.yandex.ru/docs/managed-kubernetes/operations/connect/

yc managed-kubernetes cluster \
  get-credentials kuber-shestihin \
  --external

```

## 3. Создание тестового приложения

