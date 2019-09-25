# LaravelOnCloudRunDevKit
This is a kit to deploy and develop Laravel on Cloud Run

# How to run

up containers

`docker-compose up -d`

go into composer container

`docker-compose exec composer bash`

and install Laravel on container

`composer create-project --prefer-dist laravel/laravel blog`

if you changed the project name, change the apache-config/000-default.conf
```
DocumentRoot /var/www/blog/public
↓
DocumentRoot /var/www/YOUR-PROJECT-NAME/public
```

access `localhost:8080` 



# How to Push into GCR

`gcloud builds submit --tag gcr.io/YOUR-PROJECT-ID/laravel-cloud-run`

and then, you shold deploy this on Cloud Run
