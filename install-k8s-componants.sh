echo "Installing k8s componants"
k8sversion=1.24.3-00
apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo 'deb http://apt.kubernetes.io/ kubernetes-xenial main' | sudo tee /etc/apt/sources.list.d/kubernetes.list
apt-get update -y
#apt-get install kubelet kubeadm kubectl -y
apt-get install kubeadm=$k8sversion kubectl=$k8sversion kubelet=$k8sversion -y
