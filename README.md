AltSchool Exam Project: Deploy Pipeline · Metrics · Monitoring · Logging, using an Infrastructure as Code approach

#TODO: How to recreate this project on GCP

Deploy Sock Shop after creating the cluster

Clone the microservices-demo repository
CD into the deploy/kubernetes folder

run
kubectl create namespace sock-shop

kubectl apply -f complete-demo.yaml

watch kubectl get pods

describe the front-end pod
kubectl describe pod front-end-7f5c844b4c-shvt2

change the default context to sock-shop
kubectl config set-context --current --namespace=sock-shop

kubectl port-forward svc/front-end 8080:80

*optional* kubectl expose deployment demo-deployment --type=NodePort --port=80 --target-port=8080



