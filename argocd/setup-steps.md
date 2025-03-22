helm repo add argo https://argoproj.github.io/argo-helm
helm install my-argo argo/argo-cd -n argocd

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

kubectl port-forward service/my-argo-argocd-server -n argocd 8080:443

