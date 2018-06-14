#!/usr/bin/env bash

##delete virtual service rules
istioctl delete -f ngci-virtual-service.yml
#
##delete gateway rules
istioctl delete -f ngci-gateway.yml

#delete services
kubectl delete -f services.yml

#delete deployments
kubectl delete -f deployments.yml

#delete namespace
kubectl delete -f namespace.yml
