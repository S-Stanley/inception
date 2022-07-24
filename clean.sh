#!/bin/bash

docker-compose -f srcs/docker-compose.yml down
docker system prune -a
rm -rf volumes/*/*
docker volume rm $(docker volume ls -q)