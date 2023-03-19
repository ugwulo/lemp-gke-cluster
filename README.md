<h3><p align="center">
AltSchool Cloud Engineering Final Exam Project
</p>
</h3>

Everything needs to be deployed using an Infrastructure as Code approach.
●  	In your solution please emphasize readability, maintainability and DevOps methodologies. We expect a clear way to recreate your setup and will evaluate the project decisions on:
·         Deploy pipeline
·         Metrics
·         Monitoring
·         Logging

●  	Use Prometheus as a monitoring tool
●  	Use Ansible or Terraform as the configuration management tool.
●  	You can use an IaaS provider of your choice.
●  	The application should run on Kubernetes
 
Extra requirements of the project:
●  The application should run on HTTPS with a Let’s Encrypt certificate
●  Bonus point for securing the infrastructure with network perimeter security access rules
●  Extra-bonus point if you use Ansible vault for encrypting sensitive information

live load balanced url for the sock shop microservice [altschool.ugwulo.me](http://altschool.ugwulo.me)

[Prometheus deployment](http://35.221.30.38:9090)

> I couldn't deploy the Grafana pod because of limited resources and excessive billing for spinning up enough instances in GCP

<h3><p align="center">
How to recreate this project on GCP
</p>
</h3>
connecting to the cluster
Install the new kubectl plugin 
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
confirm installation
gke-gcloud-auth-plugin --version

Deploy Sock Shop after creating the cluster

Clone the microservices-demo repository
CD into the deploy/kubernetes folder

run
kubectl create namespace sock-shop

kubectl apply -f complete-demo.yaml

watch kubectl get pods

describe the front-end pod
kubectl describe pod *"service-name"*

change the default context to sock-shop
kubectl config set-context --current --namespace=sock-shop