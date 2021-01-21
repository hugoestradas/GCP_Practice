# create the project:
gcloud projects create hugosgcppractice

# set the project as the default project
gcloud config set project hugosgcppractice

# clonning the dummy app 
git clone https://github.com/GoogleCloudPlatform/appengine-guestbook-python.git
cd appengine-guestbook-python/
ls -lha
cat app.yaml
