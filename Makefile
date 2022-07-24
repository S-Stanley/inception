all:
	docker-compose -f srcs/docker-compose.yml up --build -d
down:
	docker-compose -f srcs/docker-compose.yml down
clean:
	bash clean.sh
list:
	docker ps
logs:
	docker-compose -f srcs/docker-compose.yml logs -f
stop:
	docker stop $(docker ps -qa)

.PHONY: all down clean list logs