# create secret

echo -n "A19fh68B001j" > ./apikey.txt

# import Secret to k8s

kubectl create secret generic apikey --from-file=./apikey.txt

# deploy a pod with a secret to

kubectl apply -f pod-with-secret.yaml

# jump inside the pod

kubectl exec pod-example-for-secrets -it bash

# check the secret

cat /tmp/apikey/apikey.txt
