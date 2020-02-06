#!/bin/sh
 
cd nginx-letsencrypt && docker-compose up --build -d

cd ../db && docker-compose up --build -d

cd ../api && docker-compose up --build -d

# run web
docker exec -it yoga_institute_api /bin/bash -c "cd /app && composer install && php artisan serve --host=0.0.0.0 --port=80"
# docker exec -it yoga_institute_api /bin/bash -c "cd /app && php artisan serve --host=0.0.0.0 --port=80"

exit;