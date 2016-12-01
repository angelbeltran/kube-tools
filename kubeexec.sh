if [ "$1" = "" ]; then
  echo please provide a pod name
  exit 1
fi

POD="$1"
CONTAINER=""
CMD=sh

if [ "$3" != "" ]; then
  CONTAINER='-c '"$2"
  CMD="$3"
elif [ "$2" != "" ]; then
  CMD="$2"
fi

kubectl exec -it $(kubectl get pods | grep "$1" | awk '{ print $1 }') $CONTAINER $CMD
