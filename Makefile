build:
	docker build -t agrdocker/agr_qc_run:develop

startdb:
	docker-compose up -d neo4j.nqc

pull:
	docker pull agrdocker/agr_neo4j_nqc_data_image:develop

removedb:
	docker-compose down -v

run: build
	docker-compose up agr_loader

bash:
	docker-compose up agr_qc bash


