#Become root first sudo su -
echo 'Install docker'
apt-get update 
apt-get -y upgrade
apt-get -y install docker.io 

echo 'Install kubelet, kubeadm and kubectl'
apt-get update && apt-get install -y apt-transport-https  
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -  
cat <<EOF >/etc/apt/sources.list.d/kubernetes.list  
deb http://apt.kubernetes.io/ kubernetes-xenial main  
EOF  
apt-get update  
apt-get install -y kubelet kubeadm kubectl 
