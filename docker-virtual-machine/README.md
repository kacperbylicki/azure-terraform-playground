# Azure Virtual Machine + Terraform

## **Prerequisites**

- Terraform ≥ 1.2.3
- Azure CLI ≥ 2.38.0

## **Installation**

- Windows
  - [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
  - [Azure CLI](https://aka.ms/installazurecliwindows)
- MacOS
  - Terraform: **brew install terraform**
  - Azure CLI: **brew install azure-cli**
- Linux (Ubuntu / Debian)
  - [Terraform](https://developer.hashicorp.com/terraform/cli/install/apt)
  - [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt)

## **Usage**

- Authenticate using Azure CLI
  - `az —version`
  - if you’re using Azure Student subscription, make sure it’s created then run `az account set --subscription "YOUR_SUBSCRIPTION_ID”`
  - `az login --scope [https://graph.microsoft.com//.default](https://graph.microsoft.com//.default)`
- Provision infrastructure using Terraform
  - `terraform -v`
  - `terraform init`
  - `terraform plan`
  - `terraform apply -auto-approve`
- SSH into Azure Virtual Machine
  - Create private key for SSH connection using: **ssh-keygen -m PEM -t rsa -b 4096 -f ~/.ssh/azure-docker-vm-ssh-pk**
  - Make private key file read only using: **chmod 400 azure-docker-vm-ssh-pk**
  - Connect to virtual machine using SSH: **ssh -i ~/.ssh/azure-docker-vm-ssh-pk username@xxx.xxx.xxx.xxx**
- Install Docker with required dependencies
  - [Docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04)
  - [Docker-Compose](https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-18-04)
