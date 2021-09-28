build:
	docker-compose -f docker-compose.yml build app
ci:
	docker-compose -f docker-compose.yml run --rm app npm ci
test:
	docker-compose -f docker-compose.yml run --rm app npm test
up:
	docker-compose -f docker-compose.yml up --abort-on-container-exit
