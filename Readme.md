#### Proyecto MINTIC

Se realizará una inrfaestructura como codigo para AWS usando los siguientes recursos 

* Instancia EC2
* Base de datos RDS
* Bucket S3
* Quicksight

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
