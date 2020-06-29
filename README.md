# azure_tf
Terraform script to build a Kubernetes cluster on Azure using Azure Kubernetes Service with parameters listed in variables.tf
To connect to Your Azure Subscribtion You must add terraform.tfvars file including next info substituted with Your private params:

subscription_id = "aaaaaa-aaaa-aaaa-aaa-aaaaaa"
client_id = "bbbbb-bbbb-bbbb-bbbb-bbbbbbb"
client_secret = "x123123x23xrtrxtrt4525"
tenant_id = "aaaaa-bbbbb-cccc-dddd"

Output includes info to connect to cluster.

To connect to the created cluster using AZ CLI run following commands:

az login
az aks get-credentials --resource-group clustername-rg --name clustername 
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard
az aks browse --resource-group clustername-rg --name clustername

clustername-rg & clustername substitued from TF output


