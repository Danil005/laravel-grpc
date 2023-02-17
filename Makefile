SERVICES=app

.PHONY: up
up:
	@docker-compose up -d ${SERVICES}

.PHONY: down
down:
	@docker-compose down

.PHONY: rebuild
rebuild:
	@docker-compose up -d --build ${SERVICES}

.PHONY: restart
restart: down up

.PHONY: workspace
workspace:
	@docker-compose exec app sh