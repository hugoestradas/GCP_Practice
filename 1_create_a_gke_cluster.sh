# To successfully run this script, enable the folloging API's:
# Google Kubernetes Engine API
# Google Container Reigstry API

# create the project:
gcloud projects create hugosgcppractice

# enabling apis manually
gcloud services enable container.googleapis.com
gcloud services enable containerregistry.googleapis.com

# set the project as the default project
gcloud config set project hugosgcppractice

#define in an environment variable the GCP zone of preference
export MY_ZONE=us-central1-f

# create and start the kubernetes cluster with 2 nodes
gcloud container clusters create hugospracticegke --zone $MY_ZONE --num-nodes 2

# check the version that the cluster is running
kubectl version

# run a webserver in a cluster
kubectl nginx --image=nginx:1.10.0

# confirm the pod is running
kubectl get pods

# expose the deployment previously created
kubectl expose deployment nginx --port 80 --type LoadBalancer

# list services
kubectl get services

# scale the service
kubectl scale deployment nginx --replicas 3

# list the active services
kubectl get services

# delete the project
gcloud projects delete hugosgcppractice
