server-compose-build:
	docker-compose build

server-compose-interactive:
	docker-compose --compatibility build
	docker-compose --compatibility up

server-compose-server:
	docker-compose --compatibility build
	docker-compose --compatibility up -d

server-compose-production:
	docker-compose --compatibility build
	docker-compose --compatibility up -d

build:
	docker build -t gnps_molecularblast .

build-no-cache:
	docker build --no-cache -t gnps_molecularblast .

server:
	docker run -d -p 5052:5005 --rm --name gnps_molecularblast gnps_molecularblast /app/run_server.sh

interactive:
	docker run -it -p 5052:5005 --rm --name gnps_molecularblast gnps_molecularblast /app/run_server.sh

attach:
	docker exec -it masst-plus-worker /bin/bash