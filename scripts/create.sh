#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

cd $SCRIPT_DIR

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/provider/cloud-generic.yaml
./inject_variable.sh ../kubernetes/my-web.yaml | kubectl apply -f -
./inject_variable.sh ../kubernetes/my-api.yaml | kubectl apply -f -
./inject_variable.sh ../kubernetes/service-my-web.yaml | kubectl apply -f -
./inject_variable.sh ../kubernetes/service-my-api.yaml | kubectl apply -f -
./inject_variable.sh ../kubernetes/ingress.yaml | kubectl apply -f -
