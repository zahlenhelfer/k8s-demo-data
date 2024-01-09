helm repo add haproxy-ingress https://haproxy-ingress.github.io/charts && helm repo update
helm install haproxy-ingress haproxy-ingress/haproxy-ingress\
  --create-namespace --namespace ingress-controller\
  --version 0.14.2\
  -f haproxy-ingress-values.yaml
