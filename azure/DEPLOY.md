# Level 0 launchpad
## 1. Export env variables
``` bash
export environment=sandpit
export caf_environment=decort-tech-sandpit
```
## 1. Deploy level 0 launchpad
``` bash
rover -lz /tf/caf/azure-landingzones/${environment}/level-0/launchpad \
-var-folder /tf/caf/azure-configuration/${environment}/level-0/launchpad \
-parallelism 30 -level level0 -env ${caf_environment} -launchpad \
-a apply
```

# GitOps
## 1. DevOps Personal Access Tokens (PAT)

### Create Admin PAT

- Within Azure Devops Settings -> Personal Access Tokens. Click New Token.
  - **Name:** azdo-pat-admin
  - **Organization:** _(Your Organization)_
  - **Expiration:** 30 days _(can set Custom defined)_
  - **Scopes:** Full Access.
  - Click Create
- Take note of the Token.

### Create Agent PAT

- Within Azure Devops Settings -> Personal Access Tokens. Click New Token.
  - **Name:** azdo-pat-agent
  - **Organization:** _(Your Organization)_
  - **Expiration:** 30 days _(can set Custom defined)_
  - **Scopes:** Custom defined.
    - Click `Show all scopes` at the bottom.
    - Under `Agent Pools` tick `Read & manage`
  - Click Create
- Take note of the Token.

### Store Tokens in Azure Secrets KeyVault

Within your Azure environment from deploying Launchpad, there will be a keyvault in the form of `<prefix>-kv-secrets`. Located in the `<prefix>-rg-launchpad-security` resource group.

- Go to the KeyVault Secrets and update the following Secrets

**AZDO-PAT_ADMIN**

- Click secret named `azdo-pat-admin`
- Click New Version
- Put the Token value you took note of earlier into the 'Value' field and click Create

**AZDO-PAT_AGENT**

- Click secret named `azdo-pat-agent`
- Click New Version
- Put the Token value you took note of earlier into the 'Value' field and click Create

## 2. Deploy GitOps Connectivity
``` bash
rover -lz /tf/caf/azure-landingzones/${environment}/level-0/gitops \
  -var-folder /tf/caf/azure-configuration/${environment}/level-0/gitops/gitops_connectivity \
  -tfstate gitops_connectivity.tfstate \
  -parallelism 30 \
  -level level0 \
  -env ${caf_environment} \
  -a apply
```
## 3. Deploy Azure DevOps Configuration
``` bash
rover -lz /tf/caf/azure-landingzones/${environment}/level-0/gitops \
  -var-folder /tf/caf/azure-configuration/${environment}/level-0/gitops/azure_devops \
  -tfstate decort_tech_azure_devops.tfstate \
  -parallelism 30 \
  -level level0 \
  -env ${caf_environment} \
  -a apply
```
## 4. Deploy Azure DevOps Agents
``` bash
rover -lz /tf/caf/azure-landingzones/${environment}/level-0/gitops \
  -var-folder /tf/caf/azure-configuration/${environment}/level-0/gitops/azure_devops_agents_vm \
  -tfstate azdo-agent-levels.tfstate \
  -parallelism 30 \
  -level level0 \
  -env ${caf_environment} \
  -a apply
```

# Pipelines
All subsequent landingzones will be deployed using Azure DevOps pipelines.

Please refer to CICD.MD for further information.

