init:
	docker-compose up -d

up:
	docker-compose up -d

down:
	docker-compose down

ps:
	docker-compose ps

prometheus:
	open http://localhost:9090/targets

grafana:
	open http://localhost:9091

