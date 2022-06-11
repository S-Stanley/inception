all:
	docker-compose up --build -d
down:
	docker stop nginx
clean:
	docker system prune -a
list:
	docker ps

.PHONY: all down clean list