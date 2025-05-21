# Metrics App Deployment

## Setup Instructions

1. Create a KIND cluster
```bash
kind create cluster --name metrics-cluster --config kind-config.yaml
```

2. Install ArgoCD
```bash
./kind/install-argocd.sh
```

3. Install NGINX Ingress Controller
```bash
./kind/install-ingress-nginx.sh
```

4. Port-forward
```bash
./kind/port-forward.sh
```

5. Apply ArgoCD application
```bash
kubectl apply -f argocd/metrics-app.yaml
```

6. Access the app:
```bash
curl http://localhost/counter
```

7. Loop test

```bash
for i in $(seq 1 20); do curl -s http://localhost/counter; done
```

8. Screenshots
