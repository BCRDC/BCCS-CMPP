Aks

1. Install azure cli
2. az cloud set -n AzureChinaCloud
3. az login
4. az group create --name ccsdev-rg  --location chinaeast2
5. az aks create --resource-group ccsdev-rg --name ccsv2-dev --node-count 1 --generate-ssh-keys --kubernetes-version 1.12.6 -l chinaeast2 -s Standard_A1_v2
6. az aks get-credentials --resource-group ccsdev-rg --name ccsv2-dev
7. kubectl create -f kube-dashboard-rbac.yaml  ?? This command seems no useful
8. az aks browse --resource-group ccsdev-rg --name ccsv2-dev 

ACR

1. az acr create --resource-group ccsdev-rg --name ccsacr --sku Basic
2. az acr login --name ccsacr 



3. az aks create -n ccsv2-dev  -g ccsdev-rg --generate-ssh-keys --attach-acr  /subscriptions/4db41063-a200-4e99-a1a0-cd1454b35b68/resourceGroups/ccsdev-rg/providers/Microsoft.ContainerRegistry/registries/ccsacr

az aks update -n ccsv2-dev  -g ccsdev-rg --attach-acr /subscriptions/4db41063-a200-4e99-a1a0-cd1454b35b68/resourceGroups/ccsdev-rg/providers/Microsoft.ContainerRegistry/registries/ccsacr

4. az acr list --resource-group ccsdev-rg --query "[].{acrLoginServer:loginServer}" --output table  =>    ccsacr.azurecr.cn
5. az acr repository list --name ccsacr  --output table

6. az acr show --resource-group ccsdev-rg --name bcrdc --query "id" --output tsv
7. az aks show --resource-group ccsdev-rg --name bc-test-cluster --query "servicePrincipalProfile.clientId" --output tsv

