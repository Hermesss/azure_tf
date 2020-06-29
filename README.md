# azure_tf
Terraform script to build a Kubernetes cluster on Azure using Azure Kubernetes Service with parameters listed in variables.tf
To connect to Your Azure Subscribtion You must add terraform.tfvars file including next info substituted with Your private params:

subscription_id = "aaaaaa-aaaa-aaaa-aaa-aaaaaa" <br />
client_id = "bbbbb-bbbb-bbbb-bbbb-bbbbbbb" <br />
client_secret = "x123123x23xrtrxtrt4525" <br />
tenant_id = "aaaaa-bbbbb-cccc-dddd" <br />

Output includes info to connect to cluster.

To connect to the created cluster using AZ CLI run following commands:

az login <br />
az aks get-credentials --resource-group clustername-rg --name clustername <br />
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard <br />
az aks browse --resource-group clustername-rg --name clustername <br />

clustername-rg & clustername substitued from TF output


