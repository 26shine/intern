1. setup domain in hosts file --> update docker-compose, Dockerfile
2. clone project to web folder, rename it to source
3. create docker-network (got name in docker-compose file) --> edit file "start-docker.sh" (change container name) --> run file "start-docker.sh"
4. run "docker exec -it <container_name> bash" --> cd /app --> run "composer install"