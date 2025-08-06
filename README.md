# alpine-toolbox
Alpine with common network utilities


### Example push/build commands

```bash
docker build -t ghcr.io/averagenative/alpine-toolbox:latest .
docker push ghcr.io/averagenative/alpine-toolbox:latest
```

### Example for Dynatrace namespaced deployment
```bash
kubectl exec -it -n dynatrace deploy/alpine-toolbox -- bash
```