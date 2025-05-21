#!/bin/bash
kubectl port-forward svc/argocd-server -n argocd 8081:443 &
kubectl port-forward svc/metrics-app 8080:8080 &
