# deploy demo app
kubectl apply -f app/helloworld/ns.yaml
kubectl apply -f app/helloworld/deployment.yaml
kubectl apply -f app/helloworld/service.yaml

#deploy CIS
kubectl apply -f cis/crd-definition/customresourcedefinitions.yaml
kubectl apply -f cis/secret_sa_rbac.yaml
kubectl apply -f cis/cis1.yaml

#deploy IPAM
kubectl apply -f ipam/crd-schema.yaml
kubectl apply -f ipam/rbac.yaml
kubectl apply -f ipam/pvc.yaml
kubectl apply -f ipam/deployment.yaml

#finally, deploy virtualServer. CIS will see this and update IPAM resource but FIC is not able to update it after allocating an IP address.
kubectl apply -f cis/crd/virtualserver.yaml
