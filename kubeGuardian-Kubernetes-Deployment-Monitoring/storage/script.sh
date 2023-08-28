helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner
helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
 --create-namespace \
 --namespace nfs-provisioner \
 --set nfs.server=172.20.4.27 \
 --set nfs.path=/data/postgresql \
 --set nfs.reclaimPolicy=Retain
