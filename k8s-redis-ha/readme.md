###

```
k3d cluster create --registry-use k3d-kaixin-registry:12345 -p "8083:32005@loadbalancer" --api-port 0.0.0.0:6550 another-kaixin-demo --agents 2


kubectl apply -f https://raw.githubusercontent.com/rancher/local-path-provisioner/v0.0.24/deploy/local-path-storage.yaml


helm -n redis-ha install redis-operator .\redisoperator\ -f .\redisoperator\values.yaml
kubectl -n redis-ha logs <pod_id>

kubectl config set-context --current --namespace=redis-ha

kubectl get events --sort-by=.lastTimestamp
kubectl apply -f .\redisfailover.yaml
kubectl delete -f .\redisfailover.yaml
```