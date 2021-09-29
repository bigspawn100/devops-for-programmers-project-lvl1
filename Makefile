build:
	docker-compose -f docker-compose.yml build app
ci:
	docker-compose -f docker-compose.yml run --rm app npm ci
test:
	docker-compose -f docker-compose.yml run --rm app npm test
up:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

build_prod:
	docker-compose build app
ci_prod:
	docker-compose run --rm app npm ci
test_prod:
	docker-compose run --rm app npm test
up_prod:
	docker-compose up --abort-on-container-exit
push:
	docker-compose push app