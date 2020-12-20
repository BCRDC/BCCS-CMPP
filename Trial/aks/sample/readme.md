
# how to bind node port 
# https://blog.csdn.net/u013201439/article/details/79436465

# understand port and target port
# https://matthewpalmer.net/kubernetes-app-developer/articles/kubernetes-ports-targetport-nodeport-service.html

# dns config for kubernetes
#  https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/


# Kubernetes之Pod、 Replicaset、 Service、Deployment和Label
# https://blog.csdn.net/bbwangj/article/details/81812675

#  how to specify namespaces
1. kubectl get pods --namespace bccs


# steps

1. kubectl apply -f namespace.dev.yaml

2. kubectl apply -f akka.lighthouse.yaml


# use ingress
# https://kubernetes.io/docs/concepts/services-networking/ingress/


# tag and push local image to acr

smaple : docker tag azure-vote-front ccsacr.azurecr.cn/azure-vote-front:v1

docker tag bluecloud.ccs.web:local  ccsacr.azurecr.cn/bluecloud.ccs.web:v1

sample: docker push ccsacr.azurecr.cn/azure-vote-front:v1

docker push ccsacr.azurecr.cn/bluecloud.ccs.web:v1


docker tag bluecloud.ccs.actor:local ccsacr.azurecr.cn/bluecloud.ccs.actor:v1

docker push ccsacr.azurecr.cn/bluecloud.ccs.actor:v1

#ingress basic
# https://docs.azure.cn/zh-cn/aks/ingress-basic
helm install azure-samples/aks-helloworld --namespace bccs


# verify dns
kubectl exec -ti akka.lighthouse -- nslookup kubernetes.default
