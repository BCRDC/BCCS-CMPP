# Create a namespace for your ingress resources
#kubectl create namespace ingress-basic

# Use Helm to deploy an NGINX ingress controller
helm install nginx-ingress stable/nginx-ingress  ^
--namespace bccs ^
--set controller.replicaCount=2 ^
--set controller.nodeSelector."beta\.kubernetes\.io/os"=linux ^
--set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux ^
--set defaultBackend.image.repository=gcr.azk8s.cn/google_containers/defaultbackend


helm install azure-samples/aks-helloworld  --namespace bccs --set title="AKS Ingress Demo" --set serviceName="ingress-demo" --generate-name
