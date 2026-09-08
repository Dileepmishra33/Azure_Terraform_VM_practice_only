# Azure Terraform VM Infrastructure

This project demonstrates end-to-end Azure infrastructure provisioning using Terraform.

The infrastructure is designed using reusable Terraform components/modules for networking, security, compute, Azure Bastion, and Application Gateway.

## 🎯 Project Overview

This project provisions an Azure infrastructure environment using Infrastructure as Code (IaC) with Terraform.

The main objective is to automate the creation and configuration of Azure resources without manually provisioning them through the Azure Portal.

The project includes:

- Azure Resource Group
- Virtual Network (VNet)
- Subnets
- Network Security Group (NSG)
- Network Interface (NIC)
- Ubuntu Virtual Machine
- Azure Bastion
- Application Gateway

## 🏗️ Architecture

                         Internet
                            |
                            v
                  +-------------------+
                  | Application       |
                  | Gateway           |
                  +---------+---------+
                            |
                            v
                  +-------------------+
                  |     Azure VNet    |
                  |                   |
                  |   +-----------+   |
                  |   |    VM     |   |
                  |   |  Ubuntu   |   |
                  |   +-----+-----+   |
                  |         |         |
                  |        NIC        |
                  |                   |
                  |   +-----------+   |
                  |   |  Azure    |   |
                  |   |  Bastion  |   |
                  |   +-----------+   |
                  |                   |
                  +-------------------+

## ⚙️ Tech Stack

| Category | Technology |
|---|---|
| Infrastructure as Code | Terraform |
| Cloud Platform | Microsoft Azure |
| Compute | Azure Virtual Machine |
| Operating System | Ubuntu Linux |
| Networking | Azure VNet & Subnets |
| Security | Network Security Group |
| Network Interface | Azure NIC |
| Secure VM Access | Azure Bastion |
| Application Delivery | Azure Application Gateway |
| CLI | Azure CLI |
| Version Control | Git & GitHub |

## 📁 Project Structure

Azure_Terraform_VM/
│
├── ApplicationGW/
├── Azure_bastion/
├── NIC/
├── NSG/
├── Resource_group/
├── Subnet/
├── Virtual_machine/
├── Vnet/
├── .gitignore
└── README.md

## 🚀 Azure Resources

Terraform is used to provision:

- Resource Group
- Virtual Network
- Subnets
- Network Security Group
- Network Interface
- Ubuntu Virtual Machine
- Azure Bastion
- Application Gateway

## 🔄 Infrastructure Flow

Resource Group
      |
      v
     VNet
      |
      v
   Subnets
      |
      +-------------------+
      |                   |
      v                   v
     NSG                 Bastion
      |
      v
     NIC
      |
      v
      VM

Application Gateway
      |
      v
    Backend
      |
      v
      VM

## 🛠️ Prerequisites

Before running this project, install:

- Terraform
- Azure CLI
- Git
- Active Azure Subscription

Verify installation:

terraform --version
az --version
git --version

## 🔐 Azure Login

Login to Azure:

az login

Check subscriptions:

az account list

Select the required subscription:

az account set --subscription "<SUBSCRIPTION_ID>"

Verify:

az account show

## ▶️ How to Run

### 1. Clone the Repository

git clone https://github.com/<your-username>/Azure_Terraform_VM.git
cd Azure_Terraform_VM

### 2. Initialize Terraform

terraform init

### 3. Validate Configuration

terraform validate

### 4. Format Terraform Files

terraform fmt -recursive

### 5. Review Terraform Plan

terraform plan

### 6. Create Infrastructure

terraform apply

Confirm with:

yes

### 7. Verify Azure Resources

az resource list --output table

After successful deployment:

- Verify the Virtual Machine is running.
- Verify VNet and subnet configuration.
- Verify NSG rules.
- Verify Application Gateway.
- Use Azure Bastion for secure VM access.
- Verify application connectivity through Application Gateway.

## 🔒 Security

This project follows basic Azure security practices:

- Azure Bastion is used for secure VM access.
- Network Security Groups control network traffic.
- SSH access can be handled through Azure Bastion instead of exposing the VM directly.
- Sensitive variables should not be committed to GitHub.
- Terraform state and variable files containing secrets should be protected.

## 💰 Cost Management

Azure resources may generate charges while running.

After completing the practice, destroy the infrastructure:

terraform destroy

Confirm:

yes

Always verify the Azure Portal after destruction to ensure unwanted resources are removed.

## 🌿 Git Branching Practice

This repository is also used for Git branching and Terraform practice.

Create a branch:

git checkout -b Azure_Terraform_VM_practice_only

Check branch:

git branch

Add changes:

git add .

Commit:

git commit -m "Updated Azure Terraform infrastructure"

Push:

git push origin Azure_Terraform_VM_practice_only

## 🧠 Key Learnings

Through this project, I practiced:

- Infrastructure as Code using Terraform
- Azure resource provisioning
- Terraform variables and outputs
- Terraform resource dependencies
- Azure VNet and subnet design
- Network Security Groups
- Network Interface configuration
- Azure VM provisioning
- Azure Bastion
- Application Gateway
- Terraform state management
- Git branching
- GitHub version control
- Azure CLI
- Infrastructure automation

## 🔮 Future Improvements

- Convert infrastructure into reusable Terraform modules
- Implement Terraform remote state using Azure Storage Account
- Add CI/CD using GitHub Actions or Azure DevOps
- Automate Terraform plan and apply
- Implement Azure Key Vault for secrets
- Add Azure Monitor
- Configure HTTPS/SSL on Application Gateway
- Deploy multiple backend VMs
- Implement high availability
- Add Infrastructure Security scanning

## 👤 Author

**Dileep Kumar Mishra**

Cloud & DevOps Engineer | Azure | Terraform | Infrastructure Automation

GitHub: https://github.com/Dileepmishra33/<Dileep kumar mishra>