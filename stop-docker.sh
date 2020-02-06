#!/bin/sh
 
cd nginx-letsencrypt && docker-compose down

cd ../db && docker-compose down

cd ../api && docker-compose down

exit;