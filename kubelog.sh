if [ $1 = '' ]; then
  echo please provide the name of a pod
  exit 1
fi

kubectl logs $(kubectl get pods | grep $1 | awk '{ print $1 }') $2
