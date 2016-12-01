RESOURCES='deployments services pvc pv'

for RESOURCE in $RESOURCES; do
  kubectl delete $RESOURCE --all
done
