!#/bin/sh
export S3_ENDPOINT=fra1.digitaloceanspaces.com
export S3_ACCESS_KEY_ID=DO00VJHQXDQAQQHCX7DB
export S3_SECRET_ACCESS_KEY=WWRaxiGMu+y+YVKoCreOxGi2nf1Dn65kvtHqCRy8qVE
export DIGITALOCEAN_ACCESS_TOKEN=b5b2daab76fba4ddbdf20a56877806e42d050466a33416919a21996c2d753385

export KOPS_STATE_STORE=do://kops-state-bucket

kops create cluster \
  --cloud=digitalocean \
  --name=mycluster.dockerlabs.de \
  --image=ubuntu-22-04-x64 \
  --networking=calico \
  --zones=nyc1 \
  --ssh-public-key=~/.ssh/id_rsa.pub \
  --node-size=s-2vcpu-8gb