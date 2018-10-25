#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

cd $SCRIPT_DIR

kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/provider/cloud-generic.yaml
kubectl delete -f ../kubernetes/my-web.yaml
kubectl delete -f ../kubernetes/my-api.yaml
kubectl delete -f ../kubernetes/service-my-web.yaml
kubectl delete -f ../kubernetes/service-my-api.yaml
kubectl delete -f ../kubernetes/ingress.yaml
