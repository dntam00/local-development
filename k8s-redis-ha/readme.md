###

```
k3d cluster create --registry-use k3d-kaixin-registry:12345 -p "8083:32005@loadbalancer" --api-port 0.0.0.0:6550 another-kaixin-demo --agents 2


kubectl apply -f https://raw.githubusercontent.com/rancher/local-path-provisioner/v0.0.24/deploy/local-path-storage.yaml


docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' k3d-another-kaixin-demo-server-0

docker run -d -p 6379:6379 --name port-mapper-6379 alpine/socat tcp-listen:6379,fork,reuseaddr tcp:172.19.0.4:30079
```


# 1. Apply the storage configuration
kubectl apply -f storage.yaml

# 2. Add the Bitnami Helm repository
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

# 3. Install the Redis Cluster
helm install redis-cluster bitnami/redis-cluster -f values.yaml
 helm upgrade --install redis-cluster bitnami/redis-cluster -f values.yaml

# 4. (Optional) Watch the pods spin up
kubectl get pods -w


