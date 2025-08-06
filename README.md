# alpine-toolbox
Alpine with common network utilities


### Example push/build commands

```bash
podman build -t ghcr.io/averagenative/alpine-toolbox:latest .
podman push ghcr.io/averagenative/alpine-toolbox:latest
```

### Example gh clone and deploy
```bash
gh repo clone averagenative/alpine-toolbox
cd alpine-toolbox
kubectl apply -f alpine-toolbox-dynatrace-deployment.yaml
```

### Example usage for Dynatrace namespaced deployment
```bash
kubectl exec -it -n dynatrace deploy/alpine-toolbox -- bash
```