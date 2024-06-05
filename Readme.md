#### Proyecto MINTIC

Se realizará una inrfaestructura como codigo para AWS usando los siguientes recursos 

* Instancia EC2
* Base de datos RDS
* Bucket S3
* Quicksight
* VPC
* Security group

:warning: Se debe agregar un archivo account.tf con las access Keys y region de trabajo en AWS 

````````
provider "aws" {
  region = "us-east-1"
  access_key = "**************"
  secret_key = "************"
} 
````````
Ignorar esteos archivos 

````````
account.tf
terraform.tfstate
terraform.tfstate.*
.terraform.lock.hcl
.terraform/
terraform-provider-aws_v5.51.1_x5
LICENCE.txt
.terraform/providers/registry.terraform.io/hashicorp/aws/5.51.1/darwin_arm64/terraform-provider-aws_v5.51.1_x5

````````
### Diagrama de Infraestructura

<img width="704" alt="image" src="https://github.com/ManuRom30/Proyecto_Mintic/assets/138976735/4612cc83-3ff5-4aa3-914d-8995119d8c54">