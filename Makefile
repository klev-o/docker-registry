up: docker-up
down: docker-down
init: docker-down-clear docker-pull docker-build docker-up

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-down-clear:
	docker-compose down -v --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build

password:
	docker run registry:2.6 htpasswd -Bbn registry password > htpasswd