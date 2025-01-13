docker buildx build -t shpod-awscli:latest .

docker run -it   -v /root/.kube/config:/home/k8s/.kube/config:ro   -e KUBECONFIG=/home/k8s/.kube/config   shpod-awscli:latest


inside of the container 

sudo -i

chmod 644 /home/k8s/.kube/config

exit
