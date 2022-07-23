all:
	docker-compose -f srcs/docker-compose.yml up --build -d
down:
	docker stop nginx wordpress mariadb
clean:
	docker system prune -a
list:
	docker ps
logs:
	docker-compsoe logs -f

.PHONY: all down clean list logs