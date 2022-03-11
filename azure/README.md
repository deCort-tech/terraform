# Introduction
In this repository you can find the terraform loginc and configuration files to create different Azure landingzones. This repo is not to be used in a prod env.

This repo is using the Cloud Adoption Framwork to construct different Azure Landingzones.

## Internal documentation and references
- [Deployment Information](DEPLOY.md)

## External documentation and references
The following documentation and repo's can be referenced for more indept information about the CAF framework:

- [Microsoft Cloud Adoption Framework](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/)
- [caf-terraform-landingzones](https://github.com/Azure/caf-terraform-landingzones)
- [caf-terraform-landingzones-starter](https://github.com/azure/caf-terraform-landingzones-starter)
- [terraform-azurerm-caf-enterprise-scale](https://github.com/Azure/terraform-azurerm-caf-enterprise-scale)
- [terraform-provider-azurecaf](https://github.com/aztfmod/terraform-provider-azurecaf)
- [terraform-azurerm-caf](https://github.com/aztfmod/terraform-azurerm-caf)

# Usage
## Prerequisites
In order to use this repository you will first need to prepare your machine with the following components:

- [Visual Studio Code](https://code.visualstudio.com/)
- [Remote Development](https://code.visualstudio.com/docs/remote/remote-overview)
- [Docker Desktop](https://docs.docker.com/docker-for-windows/install/)
- [Git](https://git-scm.com/downloads)

Please follow the instruction on how to configure git and docker-desktop. This is not within the scope of this document.

## 1. Cloning repository
This repository contains the terraform logic and configuration to create different landingzones. Clone this repository to your local machine using the following command:

```bash
git clone git@ssh.dev.azure.com:v3/simacsupport/Operations-Playground/RoelC-Playground
git checkout <branch>
git pull
```
## 2. Open the repo in VSCode
Open the repository in Visual Studio Code, click on the lower bar, green sign and in the palette opening on the top of Visual Studio Code Window, select **"Open Folder in container"** or **"Reopen in container"**

## 3. Rover Login
In order to use the development container to deploy/manage the different landingzones you will need to be authenticated.

Open up a bash terminal within VSCode (+ sign > select bash) and authenticate the Rover:

```bash
rover login -t <tenantname> -s <subscription GUID>
```

## 4. Deploy
See DEPLOY.md