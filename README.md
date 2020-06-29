<img width="1280" alt="Screen Shot 2020-06-29 at 09 27 31" src="https://user-images.githubusercontent.com/22493407/85980421-0a54bc80-b9eb-11ea-9de7-fb63cfcbd13d.png">

# azure_tf
Terraform script to build a Kubernetes cluster on Azure using Azure Kubernetes Service with parameters listed in variables.tf <br />
To connect to Your Azure Subscribtion You must add terraform.tfvars file including next info substituted with Your private params: <br />

subscription_id = "aaaaaa-aaaa-aaaa-aaa-aaaaaa" <br />
client_id = "bbbbb-bbbb-bbbb-bbbb-bbbbbbb" <br />
client_secret = "x123123x23xrtrxtrt4525" <br />
tenant_id = "aaaaa-bbbbb-cccc-dddd" <br />

Change context to cloned directory and run: <br />
terrafom init <br />
terraform apply <br />

Output includes info to connect to cluster.

To connect to the created cluster using AZ CLI run following commands:

az login <br />
az aks get-credentials --resource-group clustername-rg --name clustername <br />
kubectl create clusterrolebinding kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard <br />
az aks browse --resource-group clustername-rg --name clustername <br />

clustername-rg & clustername substitued from TF output


