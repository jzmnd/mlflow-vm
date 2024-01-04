start:
	@docker-compose --env-file config.env up -d

stop:
	@docker-compose --env-file config.env down

.PHONY: start stop
