# Terraform Azure Infrastructure

Este proyecto de Terraform está diseñado para desplegar y gestionar recursos en Azure. Antes de comenzar con la aplicación del plan de Terraform, debes realizar algunos pasos iniciales para configurar el backend remoto donde se almacenará el estado de Terraform.

## Pasos Iniciales

1. **Crear el Resource Group, Storage Account y Blob Storage**

   Terraform necesita un backend remoto para almacenar el estado. Debes crear manualmente un Resource Group, una Storage Account y un Blob Storage Container en Azure para que Terraform pueda utilizar este backend.

### 1.1 Crear el Resource Group

Utiliza el siguiente comando para crear un Resource Group en Azure CLI:

```bash
az group create --name <RESOURCE_GROUP_NAME> --location <LOCATION>
```
- Reemplaza <RESOURCE_GROUP_NAME> con el nombre deseado para el grupo de recursos.
- Reemplaza <LOCATION> con la región en la que deseas crear el grupo de recursos (por ejemplo, East US).

### 1.2 Crear la Storage Account

Crea una Storage Account en Azure CLI:

```bash
az storage account create --name <STORAGE_ACCOUNT_NAME> --resource-group <RESOURCE_GROUP_NAME> --location <LOCATION> --sku Standard_LRS --kind StorageV2
```
- Reemplaza `<STORAGE_ACCOUNT_NAME>` con el nombre deseado para la cuenta de almacenamiento.
- Reemplaza `<RESOURCE_GROUP_NAME>` con el nombre del grupo de recursos creado en el paso anterior.
- Reemplaza `<LOCATION>` con la región en la que deseas crear la cuenta de almacenamiento.

### 1.3 Crear el Blob Storage Container

Crea un Blob Storage Container en Azure CLI:

```bash
az storage container create --name <BLOB_CONTAINER_NAME> --account-name <STORAGE_ACCOUNT_NAME>
```
- Reemplaza `<BLOB_CONTAINER_NAME>` con el nombre deseado para el contenedor de blobs.
- Reemplaza `<STORAGE_ACCOUNT_NAME>` con el nombre de la cuenta de almacenamiento creada anteriormente.

## Configuración del Backend en Terraform
Una vez que hayas creado el Resource Group, la Storage Account y el Blob Storage Container, debes configurar el backend en tu archivo `backend.tf` para que Terraform utilice el almacenamiento remoto para el estado.
```terraform
terraform {
  backend "azurerm" {
    resource_group_name   = "<RESOURCE_GROUP_NAME>"
    storage_account_name  = "<STORAGE_ACCOUNT_NAME>"
    container_name        = "<BLOB_CONTAINER_NAME>"
    key                   = "terraform.tfstate"
  }
}
```
- Reemplaza `<RESOURCE_GROUP_NAME>`, `<STORAGE_ACCOUNT_NAME>`, y `<BLOB_CONTAINER_NAME>` con los valores que has utilizado para crear los recursos.
## Comandos de Terraform

1. **Inicializar el Directorio de Trabajo**

   Ejecuta el siguiente comando para inicializar el directorio de trabajo y configurar el backend remoto:

   ```bash
   terraform init
    ```
2.  **Aplicar la Configuracion**
    Ejecuta el siguiente comando para aplicar la configuración de Terraform y crear los recursos definidos en los archivos de configuración:
    ```bash
    terraform apply
    ```
