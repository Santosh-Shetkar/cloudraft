# Metrics App Deployment

## Setup Instructions

1. Create a KIND cluster
```bash
kind create cluster --name metrics-cluster --config cluster-config.yaml
```

2. Install ArgoCD
```bash
./kind/install-argocd.sh
```
Access the argocd dashboard

3. Install NGINX Ingress Controller
```bash
./kind/install-ingress-nginx.sh
```

4. Port-forward
```bash
kubectl port-forward svc/argocd-server -n argocd 8081:443
```

5. Access the ArgoCD Dashboard and connect github repository to ArgoCD then create application from it or apply the below ArgoCD application
```bash
kubectl apply -f argocd/metrics-app.yaml
```

6. Access the app:
```bash

kubectl port-forward svc/metrics-app 8080:8080
curl http://localhost/counter
```

7. Loop test

```bash
for i in $(seq 1 20); do curl -s http://localhost/counter; done
```

8. All Screenshots

![main](images/1.png)
![main](images/2.png)
![main](images/3.png)
![main](images/4.png)
![main](images/5.png)
![main](images/6.png)
![main](images/7.png)
![main](images/8.png)
![main](images/9.png)
![main](images/10.png)
![main](images/11.png)
![main](images/12.png)