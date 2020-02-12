init:
	docker-compose up -d

up:
	docker-compose up -d

down:
	docker-compose down

ps:
	docker-compose ps

cadvisor:
	open http://localhost:8080

prometheus:
	open http://localhost:9090/targets

grafana:
	open http://localhost:3001
