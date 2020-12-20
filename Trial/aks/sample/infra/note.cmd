kubectl create configmap bccs-cluster  ^
--from-file=akka.hocon=.\akka.hocon ^
--from-file=web.hocon=.\web.hocon ^
--from-file=ccs.actor.hocon=.\ccs.actor.hocon ^
-o yaml --dry-run --namespace bccs |  kubectl replace -f -