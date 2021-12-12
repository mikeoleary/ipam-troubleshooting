
#delete virtualServer
kubectl delete -f cis/crd/virtualserver.yaml

#delete IPAM
kubectl delete -f ipam/deployment.yaml
kubectl delete -f ipam/pvc.yaml

#delete CIS
kubectl delete -f cis/cis1.yaml
kubectl delete -f cis/secret_sa_rbac.yaml
kubectl delete -f cis/crd-definition/customresourcedefinitions.yaml

#delete demo app
kubectl delete -f app/helloworld/service.yaml
kubectl delete -f app/helloworld/deployment.yaml
kubectl delete -f app/helloworld/ns.yaml




