variable "gcp_region" {
  type    = string
  default = "us-east1"
}

variable "gcp_az" {
  type    = list(string)
  default = ["us-east1-b", "us-east1-c"]
}

variable "project_id" {
  type    = string
  default = "altschool-379016"
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}
# connecting to the cluster
# Install the new kubectl plugin 
# sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
# confirm installation
# gke-gcloud-auth-plugin --version