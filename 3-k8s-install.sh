#Become root first sudo su -
echo 'Update'
apt-get update 

echo 'Upgrade'
apt-get -y upgrade

echo 'Install docker'
apt-get -y install docker.io 

echo 'Install kubelet, kubeadm, kubectl and kubernetes-cni'
apt-get install -y apt-transport-https  
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF

echo 'Update'
apt-get update 

echo 'Upgrade'
apt-get -y upgrade

apt-get install -y kubelet kubeadm kubectl kubernetes-cni
