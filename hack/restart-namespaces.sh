kubectl get deployments -n vpn -o custom-columns=NAME:.metadata.name|grep -iv NAME|while read LINE; do kubectl rollout restart deployment $LINE -n vpn; done;
kubectl get statefulset -n vpn -o custom-columns=NAME:.metadata.name|grep -iv NAME|while read LINE; do kubectl rollout restart statefulset $LINE -n vpn; done;

kubectl get deployments -n default -o custom-columns=NAME:.metadata.name|grep -iv NAME|while read LINE; do kubectl rollout restart deployment $LINE -n default; done;
kubectl get statefulset -n default -o custom-columns=NAME:.metadata.name|grep -iv NAME|while read LINE; do kubectl rollout restart statefulset $LINE -n default; done;

kubectl get deployments -n media -o custom-columns=NAME:.metadata.name|grep -iv NAME|while read LINE; do kubectl rollout restart deployment $LINE -n media; done;
kubectl get statefulset -n media -o custom-columns=NAME:.metadata.name|grep -iv NAME|while read LINE; do kubectl rollout restart statefulset $LINE -n media; done;

kubectl get deployments -n downloads -o custom-columns=NAME:.metadata.name|grep -iv NAME|while read LINE; do kubectl rollout restart deployment $LINE -n downloads; done;
kubectl get statefulset -n downloads -o custom-columns=NAME:.metadata.name|grep -iv NAME|while read LINE; do kubectl rollout restart statefulset $LINE -n downloads; done;