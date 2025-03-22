helm repo add traefik https://traefik.github.io/charts && helm repo update
helm install traefik-ingress traefik/traefik \
  --create-namespace \
  --namespace ingress-controller \
  --version 27.0.2 \
  -f traefik-values.yaml
