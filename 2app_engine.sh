# create the project:
gcloud projects create hugosgcppractice

# set the project as the default project
gcloud config set project hugosgcppractice

# clonning sand inspecting the dummy app 
git clone https://github.com/GoogleCloudPlatform/appengine-guestbook-python.git
cd appengine-guestbook-python/
ls -lha
cat app.yaml

# running the app locally in the cloud shell
dev_appserver.py ./app.yaml
