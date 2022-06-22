all:
	docker-compose up --build -d
build:
	docker-compose up --build
down:
	docker stop nginx wordpress mariadb
clean:
	docker system prune -a
list:
	docker ps
logs:
	docker logs nginx

.PHONY: all down clean list build logs