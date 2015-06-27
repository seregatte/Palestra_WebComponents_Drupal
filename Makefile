SHELL:=/bin/bash

all: server

server:
	cd docker && docker-compose up -d

halt:
	cd docker && docker-compose stop

reload:
	cd docker && docker-compose stop && docker-compose up -d

destroy:
	cd docker && docker-compose stop && docker-compose rm -f

ssh:
	docker exec -it docker_webcomponents_1 /bin/bash