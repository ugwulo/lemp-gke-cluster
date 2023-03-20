<p align="center">
SOCK SHOP MICROSERVICES APP
</p>

PLEASE REFER TO THIS FOLDER FOR THE SECOND APP: [PORTFOLIO APP](https://github.com/ugwulo/lemp-gke-cluster/tree/main/choice-web-app)

</h3>
Stacks:
<ul>
    <li>GCP provider</li>
    <li>Docker</li>
    <li>Kubernetes (GKE)</li>
    <li>Prometheus as a monitoring tool.</li>
    <li>Terraform as the configuration management tool.</li>
</ul>
 
### live load balanced url for the sock shop microservice [http://altschool.ugwulo.me](http://altschool.ugwulo.me)

![frontend](https://raw.githubusercontent.com/ugwulo/cdn-server/main/sock-shop-assets/deploy-with-custom-domain.jpg)

## live url for [Prometheus deployment](http://35.221.30.38:9090)

![frontend](https://raw.githubusercontent.com/ugwulo/cdn-server/main/sock-shop-assets/prometheus-loadbalancer-url.jpg)

> I couldn't deploy the Grafana pod because of limited resources and excessive billing for spinning up enough instances in GCP

<h3><p align="center">
How to recreate this project on GCP
</p>
</h3>

<ul>
    <li>Setup terraform on your local machine</li>
    <li>Setup Google cloud sdk</li>
<pre><code>
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
</code></pre>
    <li>a Google service account is created by terraform in the node_pools.tf file</li>
    <li>This will generate a private key tha we'll use to connect to GCP</li>
    <li>Go ahead and run terraform apply to create your GKE cluster</li>
</ul>
 
<h3><p align="center">
Deploy the Sock Shop after creating the cluster
</p>
</h3>

<ul>
    <li>Clone the microservices-demo repository</li>
    <li>CD into the deploy/kubernetes folder then run the following</li>
    <pre><code>
kubectl create namespace sock-shop
</code></pre>

<li>change the default context to sock-shop</li>
    
<pre><code>
kubectl config set-context --current --namespace=sock-shop
</code></pre>
<li>deploy the manifest files</li>
<pre><code>
kubectl apply -f complete-demo.yaml
</code></pre>
<li>describe the front-end pod</li>
    <pre><code>
kubectl describe pod *"service-name"*
kubectl get svc
</code></pre>
<li>wait for the external IP to be allocated then copy it and test</li>
</ul>

![frontend](https://raw.githubusercontent.com/ugwulo/cdn-server/main/sock-shop-assets/sock-shop-deployment.jpg)

PLEASE REFER TO THIS FOLDER FOR THE SECOND APP: [PORTFOLIO APP](https://github.com/ugwulo/lemp-gke-cluster/tree/main/choice-web-app)
